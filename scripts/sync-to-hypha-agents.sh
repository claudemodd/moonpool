#!/bin/bash
# sync-to-hypha-agents.sh
# Selective sync script for maintaining hypha-agents repository

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
MOONPOOL_ROOT="$(dirname "$SCRIPT_DIR")"
HYPHA_AGENTS_ROOT="${MOONPOOL_ROOT}/../hypha-agents"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Hypha-Agents Sync Script${NC}"
echo "==========================================="

# Verify directories exist
if [ ! -d "$HYPHA_AGENTS_ROOT" ]; then
    echo -e "${RED}Error: hypha-agents directory not found at $HYPHA_AGENTS_ROOT${NC}"
    exit 1
fi

if [ ! -d "$MOONPOOL_ROOT/.claude/agents" ]; then
    echo -e "${RED}Error: Moonpool agents directory not found${NC}"
    exit 1
fi

echo "Moonpool root: $MOONPOOL_ROOT"
echo "Hypha-agents root: $HYPHA_AGENTS_ROOT"
echo

# Function to check if content is generic (safe to sync)
is_generic_content() {
    local file="$1"
    local content=$(cat "$file")
    
    # Check for project-specific terms
    if echo "$content" | grep -qi "moonpool\|financial.*intelligence\|privacy.*management"; then
        return 1  # Contains project-specific content
    fi
    
    return 0  # Generic content
}

# Function to sanitize content for hypha-agents
sanitize_content() {
    local content="$1"
    
    # Remove any remaining project-specific references
    echo "$content" | \
        sed 's/Moonpool/[PROJECT_NAME]/g' | \
        sed 's/moonpool/[project-name]/g' | \
        sed 's/Financial Intelligence Platform/[BUSINESS_DOMAIN]/g' | \
        sed 's/financial intelligence/[business domain]/g'
}

# Sync agent prompts
echo -e "${YELLOW}Reviewing agent prompts for generic improvements...${NC}"

MOONPOOL_AGENTS="$MOONPOOL_ROOT/.claude/agents"
HYPHA_PROMPTS="$HYPHA_AGENTS_ROOT/agents/prompts"

agent_updates=0
for moonpool_agent in "$MOONPOOL_AGENTS"/*.md; do
    if [ ! -f "$moonpool_agent" ]; then
        continue
    fi
    
    agent_name=$(basename "$moonpool_agent")
    echo "Checking: $agent_name"
    
    # Map Moonpool agent names to hypha-agents names
    hypha_name=""
    case "$agent_name" in
        "platform-architect.md") hypha_name="platform_architect.md" ;;
        "documentation-guardian.md") hypha_name="documentation_agent.md" ;;
        "security-reviewer.md") hypha_name="security_agent.md" ;;
        "market-researcher.md") hypha_name="market_researcher.md" ;;
        "product-strategist.md") hypha_name="product_strategy_agent.md" ;;
        "code-reviewer.md") hypha_name="code_reviewer.md" ;;
        "automation-engineer.md") hypha_name="automation_agent.md" ;;
        "backend-developer.md") hypha_name="backend_developer.md" ;;
        "frontend-developer.md") hypha_name="frontend_developer.md" ;;
        "task-orchestrator.md") hypha_name="main_orchestrator.md" ;;
        "ux-designer.md") hypha_name="product_design_agent.md" ;;
        "test-engineer.md") hypha_name="tester.md" ;;
        "integration-specialist.md") hypha_name="integration_agent.md" ;;
        *) 
            echo "  → Unknown agent, skipping"
            continue
            ;;
    esac
    
    hypha_agent="$HYPHA_PROMPTS/$hypha_name"
    
    if [ ! -f "$hypha_agent" ]; then
        echo "  → Target file $hypha_name not found in hypha-agents, skipping"
        continue
    fi
    
    # Check if content is generic
    if is_generic_content "$moonpool_agent"; then
        echo -e "  → ${GREEN}Generic content detected${NC}"
        
        # Compare files to see if update is needed
        if ! cmp -s "$moonpool_agent" "$hypha_agent" 2>/dev/null; then
            echo "  → Content differs, manual review required:"
            echo "    Moonpool: $moonpool_agent"
            echo "    Hypha:    $hypha_agent"
            echo "    Run: diff \"$moonpool_agent\" \"$hypha_agent\""
            ((agent_updates++))
        else
            echo "  → Files are identical, no sync needed"
        fi
    else
        echo -e "  → ${YELLOW}Contains project-specific content, manual review required${NC}"
        ((agent_updates++))
    fi
    echo
done

echo "==========================================="
echo -e "${GREEN}Sync Review Complete${NC}"
echo "Agent files requiring manual review: $agent_updates"

if [ $agent_updates -gt 0 ]; then
    echo
    echo -e "${YELLOW}Manual Steps Required:${NC}"
    echo "1. Review differences shown above"
    echo "2. Extract generic improvements from Moonpool agents"
    echo "3. Update hypha-agents manually with sanitized content"
    echo "4. Test that improvements work for generic business domains"
    echo "5. Commit changes to hypha-agents repository"
    echo
    echo -e "${YELLOW}⚠️  NEVER automatically copy content containing:${NC}"
    echo "   • Moonpool references"
    echo "   • Financial Intelligence domain terms"
    echo "   • Project-specific bounded contexts"
    echo "   • Business-specific examples"
fi

echo
echo -e "${GREEN}For detailed sync strategy, see:${NC}"
echo "  $MOONPOOL_ROOT/HYPHA_AGENTS_SYNC_STRATEGY.md"