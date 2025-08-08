# Hypha-Agents Repository Sync Strategy

**Purpose:** Keep the generic hypha-agents repo updated while excluding all Moonpool/project-specific content.

## Content Classification

### ✅ SAFE TO SYNC (Generic Framework Content)

**Agent Configurations:**
- `agents/prompts/*.md` - All 13 agent prompt files
- Agent behavior improvements and refinements
- Claude Code subagent format updates

**Framework Structure:**
- Discovery/Validation/Domain workflow methodology
- Process documentation improvements
- Quality gate definitions
- Template structures (empty/generic)

**System Infrastructure:**
- Documentation workflows
- Validation processes
- Agent interaction patterns

### ❌ NEVER SYNC (Project-Specific Content)

**Financial Intelligence Domain:**
- `domain/contexts/financial-intelligence/`
- `domain/contexts/market-intelligence/` - Contains Moonpool market analysis
- `domain/contexts/user-management/` - Project-specific user concepts  
- `domain/contexts/privacy-management/` - Moonpool privacy requirements
- `domain/contexts/data-integration/` - Project-specific integrations
- `domain/contexts/decision-support/` - Financial decision logic

**Moonpool Examples:**
- `discovery/market-exploration/README.md` - "Financial Intelligence Market" content
- `discovery/product-discovery/README.md` - "Financial Intelligence Platform" content
- `domain/glossary/index.md` - Financial domain terms

## Sync Implementation

### Manual Sync Process (Recommended)

1. **Review Changes in project-moonpool/.claude/agents/**
   - Compare with hypha-agents/agents/prompts/
   - Identify generic improvements vs project-specific changes

2. **Extract Generic Improvements**
   - Agent behavior enhancements
   - Process methodology improvements  
   - Documentation clarity improvements
   - Claude Code integration improvements

3. **Update hypha-agents Selectively**
   - Copy generic agent prompt improvements
   - Update framework documentation
   - Exclude any project-specific references

4. **Clean hypha-agents Content**
   - Remove/replace any Moonpool references
   - Replace financial domain examples with generic examples
   - Ensure domain-agnostic language throughout

### Automated Sync Script Approach

```bash
#!/bin/bash
# sync-hypha-agents.sh

MOONPOOL_AGENTS="./project-moonpool/.claude/agents/"
HYPHA_AGENTS="../hypha-agents/agents/prompts/"

# Sync generic agent improvements only
for agent in platform-architect documentation-guardian security-reviewer; do
    echo "Reviewing $agent for generic improvements..."
    # Manual review required - no automatic sync for safety
done

# Never sync these project-specific files:
EXCLUDE_PATTERNS=(
    "*moonpool*"
    "*financial*intelligence*"
    "*market*intelligence*" 
    "*user*management*"
    "*privacy*management*"
    "*data*integration*"
    "*decision*support*"
)
```

### Content Sanitization Checklist

Before syncing any content to hypha-agents:

- [ ] Remove all references to "Moonpool" or "moonpool"
- [ ] Remove all references to "Financial Intelligence Platform"
- [ ] Remove domain-specific bounded contexts
- [ ] Remove project-specific examples and use cases
- [ ] Replace with generic business domain examples
- [ ] Ensure all language is domain-agnostic
- [ ] Verify agent prompts work for any business domain

## Repository Separation Benefits

### hypha-agents Repository (Generic Framework)
- **Purpose:** Reusable DDD/Hexagonal agent framework
- **Audience:** Any development team wanting structured domain modeling
- **Content:** Generic agent behaviors, process templates, methodology

### project-moonpool Repository (Specific Implementation)  
- **Purpose:** Moonpool-specific application of the framework
- **Audience:** Moonpool development team
- **Content:** Financial domain models, Moonpool business logic, project documentation

## Sync Cadence

**Weekly Review:** Check for generic improvements in Moonpool agents
**Monthly Cleanup:** Sanitize and sync approved improvements to hypha-agents  
**Release Cycles:** Major framework improvements trigger hypha-agents releases

## Quality Gates

1. **Generic Applicability Test:** Would this improvement help ANY development team?
2. **Domain Agnostic Test:** Does this contain zero project-specific terminology?  
3. **Framework Enhancement Test:** Does this improve the DDD/Hexagonal methodology?
4. **Documentation Quality Test:** Is this clear for external teams to understand?

---

**Key Principle:** hypha-agents should be a pure, reusable framework that any team can deploy to enforce DDD/Hexagonal architecture, while project-moonpool contains all business-specific implementation details.