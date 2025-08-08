#!/bin/bash

# Notion Sync Tools for Integration Agent
# Provides cURL-based tooling for documentation synchronization

set -euo pipefail

# Configuration
NOTION_API_BASE="https://api.notion.com/v1"
NOTION_VERSION="2022-06-28"

# Environment variables required:
# NOTION_API_KEY - Notion integration token
# PROJECT_NOTION_PAGE_ID - Target Notion page ID

# Color output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

check_env() {
    if [[ -z "${NOTION_API_KEY:-}" ]]; then
        log_error "NOTION_API_KEY environment variable not set"
        exit 1
    fi
    
    if [[ -z "${PROJECT_NOTION_PAGE_ID:-}" ]]; then
        log_error "PROJECT_NOTION_PAGE_ID environment variable not set"
        exit 1
    fi
}

get_notion_page_content() {
    local page_id="$1"
    log_info "Fetching content for page: $page_id"
    
    curl -s \
        -H "Authorization: Bearer $NOTION_API_KEY" \
        -H "Notion-Version: $NOTION_VERSION" \
        "$NOTION_API_BASE/blocks/$page_id/children" | jq '.'
}

list_notion_pages() {
    local parent_page_id="$1"
    log_info "Listing child pages of: $parent_page_id"
    
    local response=$(curl -s \
        -H "Authorization: Bearer $NOTION_API_KEY" \
        -H "Notion-Version: $NOTION_VERSION" \
        "$NOTION_API_BASE/blocks/$parent_page_id/children")
    
    echo "$response"
    log_info "Raw response received - parse manually for child pages"
}

create_notion_page() {
    local parent_page_id="$1"
    local title="$2"
    local content_json="$3"
    
    log_info "Creating Notion page: $title"
    
    curl -s \
        -X POST \
        -H "Authorization: Bearer $NOTION_API_KEY" \
        -H "Notion-Version: $NOTION_VERSION" \
        -H "Content-Type: application/json" \
        -d '{
            "parent": {
                "type": "page_id",
                "page_id": "'$parent_page_id'"
            },
            "properties": {
                "title": {
                    "title": [
                        {
                            "text": {
                                "content": "'$title'"
                            }
                        }
                    ]
                }
            },
            "children": '$content_json'
        }' \
        "$NOTION_API_BASE/pages" | jq '.id'
}

sync_discovery_docs() {
    local docs_dir="$1"
    
    if [[ ! -d "$docs_dir/discovery" ]]; then
        log_error "Discovery directory not found: $docs_dir/discovery"
        exit 1
    fi
    
    log_info "Syncing discovery documents to Notion..."
    
    # Find all markdown files in discovery subdirectories
    find "$docs_dir/discovery" -name "*.md" -not -name "README.md" | while read -r file; do
        # Extract category and filename
        category=$(basename $(dirname "$file"))
        filename=$(basename "$file" .md)
        title="$category: $filename"
        
        log_info "Processing: $file -> $title"
        
        # Convert markdown to simplified JSON blocks (basic implementation)
        # This would need enhancement for full markdown support
        content_json='[{
            "object": "block",
            "type": "paragraph",
            "paragraph": {
                "rich_text": [{
                    "type": "text",
                    "text": {
                        "content": "Content from: '$file'"
                    }
                }]
            }
        }]'
        
        # Create page (simplified - should check for existing pages)
        page_id=$(create_notion_page "$PROJECT_NOTION_PAGE_ID" "$title" "$content_json")
        log_success "Created page: $title (ID: $page_id)"
    done
}

show_usage() {
    echo "Usage: $0 [command] [options]"
    echo ""
    echo "Commands:"
    echo "  list-pages              List all child pages of PROJECT_NOTION_PAGE_ID"
    echo "  get-content [PAGE_ID]   Get content of specific page"
    echo "  sync-discovery [DIR]    Sync discovery docs from directory to Notion"
    echo "  check-env               Verify required environment variables"
    echo ""
    echo "Environment Variables Required:"
    echo "  NOTION_API_KEY         - Notion integration token"
    echo "  PROJECT_NOTION_PAGE_ID - Target Notion page ID"
    echo ""
    echo "Examples:"
    echo "  export NOTION_API_KEY='ntn_...' "
    echo "  export PROJECT_NOTION_PAGE_ID='248a6ef15e228151a198ee8a9be5b270'"
    echo "  $0 list-pages"
    echo "  $0 sync-discovery ./docs"
}

main() {
    case "${1:-help}" in
        "list-pages")
            check_env
            list_notion_pages "$PROJECT_NOTION_PAGE_ID"
            ;;
        "get-content")
            check_env
            if [[ -z "${2:-}" ]]; then
                log_error "Page ID required for get-content command"
                exit 1
            fi
            get_notion_page_content "$2"
            ;;
        "sync-discovery")
            check_env
            if [[ -z "${2:-}" ]]; then
                log_error "Directory path required for sync-discovery command"
                exit 1
            fi
            sync_discovery_docs "$2"
            ;;
        "check-env")
            check_env
            log_success "Environment variables are configured"
            ;;
        "help"|*)
            show_usage
            ;;
    esac
}

main "$@"