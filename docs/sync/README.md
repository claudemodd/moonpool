# Project Moonpool Documentation Sync

This directory contains tooling for synchronizing project documentation with Notion for collaborative review.

## Configuration

1. Copy `.env.example` to `.env` and configure:
   ```bash
   cp .env.example .env
   # Edit .env with your Notion API key
   ```

2. Set environment variables:
   ```bash
   export NOTION_API_KEY='your_notion_integration_token'
   export PROJECT_NOTION_PAGE_ID='248a6ef15e228151a198ee8a9be5b270'
   ```

## Usage

```bash
# List all pages in Notion
./notion-sync.sh list-pages

# Get content of specific page
./notion-sync.sh get-content [PAGE_ID]

# Sync discovery documents to Notion  
./notion-sync.sh sync-discovery ../

# Check environment setup
./notion-sync.sh check-env
```

## Integration Agent Responsibility

The Integration Agent manages this sync infrastructure. The Documentation Agent coordinates sync requests but does not handle the technical implementation.

**Target Notion Page**: [Project Moonpool](https://www.notion.so/Project-moonpool-248a6ef15e228151a198ee8a9be5b270)

## Dependencies

- curl
- bash
- Environment variables configured