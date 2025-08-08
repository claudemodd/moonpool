# Project Moonpool Scripts

## sync-to-hypha-agents.sh

**Purpose:** Maintain the generic hypha-agents repository while excluding all Moonpool-specific content.

### Usage

```bash
./scripts/sync-to-hypha-agents.sh
```

### What It Does

1. **Compares** Moonpool agent improvements with hypha-agents
2. **Identifies** generic content safe to sync  
3. **Flags** project-specific content that should NOT be synced
4. **Provides** manual review guidance for content sanitization

### Output

- Lists agent files that need manual review
- Shows diff commands for comparing content
- Highlights project-specific content that must be excluded
- Provides sanitization guidelines

### Safety Features

- **Never automatically syncs** to prevent contamination
- **Content filtering** detects project-specific terms
- **Manual review required** for all changes
- **Sanitization guidance** for safe content transfer

### Example Output

```
Checking: platform-architect.md
  → Generic content detected
  → Content differs, manual review required:
    Run: diff "./project-moonpool/.claude/agents/platform-architect.md" "../hypha-agents/agents/prompts/platform_architect.md"

Checking: documentation-guardian.md  
  → Contains project-specific content, manual review required
```

### Next Steps After Running

1. Review flagged differences using suggested diff commands
2. Extract generic improvements from Moonpool agents
3. Manually sanitize content to remove project-specific references
4. Test improvements work for any business domain
5. Update hypha-agents repository with clean, generic content

## Content Safety Rules

### ✅ Safe to Sync
- Agent behavior improvements
- Process methodology enhancements
- Claude Code integration updates
- Framework documentation improvements

### ❌ Never Sync  
- References to "Moonpool" or financial intelligence
- Project-specific bounded contexts or domain terms
- Business-specific examples or use cases
- Moonpool workflow implementations

---

**Key Principle:** Keep hypha-agents as a pure, reusable framework while Moonpool contains all business-specific implementations.