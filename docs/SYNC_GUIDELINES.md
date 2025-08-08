# Project Moonpool Documentation Sync Guidelines

## Overview

Project Moonpool uses bidirectional synchronization between local markdown files and Notion for collaborative documentation during the discovery phase. This guide covers best practices, workflows, and troubleshooting.

## Sync Configuration

### Environment Setup
- Copy `.env.example` to `.env` in the `docs/sync/` directory
- Ensure Notion API key is configured: `NOTION_API_KEY=your_notion_api_key_here`
- Target Notion page: https://www.notion.so/Project-moonpool-248a6ef15e228151a198ee8a9be5b270

### Sync Modes
- `bidirectional`: Default - syncs both ways
- `to-notion`: Only pushes local changes to Notion
- `from-notion`: Only pulls Notion changes to local files

## Workflows

### Standard Discovery Workflow

1. **Local Documentation Creation**
   ```bash
   cd docs/discovery/
   # Create or edit markdown files in:
   # - market-exploration/
   # - product-discovery/
   # - user-interviews/
   ```

2. **Sync to Notion for Collaboration**
   ```bash
   cd ../sync
   npm run to-notion
   ```

3. **Collaborative Review in Notion**
   - Share Notion page with stakeholders
   - Add comments and suggestions in Notion
   - Use Notion's collaboration features for real-time feedback

4. **Sync Back to Local (when ready)**
   ```bash
   npm run from-notion
   ```

5. **Version Control**
   ```bash
   git add .
   git commit -m "Updated discovery docs from Notion collaboration"
   git push
   ```

### Quick Sync Commands

```bash
# Full bidirectional sync
npm run sync

# Push local changes to Notion only
npm run to-notion

# Pull Notion changes to local only
npm run from-notion
```

## Best Practices

### File Naming Conventions
- Use kebab-case: `moonpool-initial-concept.md`
- Include dates for time-sensitive documents: `user-interview-2025-08-07.md`
- Group related documents in subdirectories

### Content Guidelines
- Use clear, descriptive headings for better Notion formatting
- Include status indicators: `**Status:** Draft | In Review | Validated`
- Add last updated timestamps
- Use checkboxes for actionable items

### Collaboration Workflow
- **Discovery Phase**: Work freely in both local files and Notion
- **Review Phase**: Use Notion comments for feedback
- **Finalization**: Sync back to local and commit to git
- **Validation**: Ready documents move to validation phase with agents

### Sync Timing
- **Daily Discovery Work**: Sync to Notion at end of day
- **Before Meetings**: Sync to Notion for collaborative review
- **After Collaboration**: Sync from Notion to capture feedback
- **Before Git Commits**: Always sync from Notion first

## File Structure Integration

### Discovery Documents Location
```
docs/
├── discovery/
│   ├── market-exploration/
│   ├── product-discovery/
│   ├── user-interviews/
│   └── README.md
├── sync/
│   ├── moonpool-notion-sync.js
│   ├── package.json
│   ├── .env
│   └── .env.example
└── SYNC_GUIDELINES.md
```

### Agent System Integration
- Discovery documents remain DDD-exempt during exploration
- Claude Code subagents handle validation and domain transition
- Documents graduate from discovery to domain contexts after agent validation
- Multi-agent coordination ensures proper phase transitions

## Troubleshooting

### Common Issues

**Sync Fails with Authentication Error**
- Verify `.env` file exists and contains valid `NOTION_API_KEY`
- Check Notion integration permissions for the target page

**Content Formatting Issues**
- Notion converts markdown differently - review after sync
- Complex markdown may need manual adjustment in Notion
- Images and tables may require special handling

**Merge Conflicts**
- Always sync from Notion before making local changes
- Use `npm run from-notion` before editing locally
- Resolve conflicts manually if both sources have changes

**Missing Dependencies**
```bash
cd docs/sync
npm install
```

### Sync Status Verification
- Check git status after sync operations
- Review Notion page to verify content updated
- Test both directions periodically

## Security Considerations

- `.env` file is gitignored to protect API keys
- Use `.env.example` for team onboarding
- Notion page permissions control collaboration access
- API key rotates - update `.env` when changed

## Future Enhancements

### Planned Features
- Automated sync triggers on git commits
- Real-time sync monitoring
- Enhanced markdown-to-Notion conversion
- Bulk document operations
- Sync conflict resolution tools

### Integration Opportunities
- GitHub Actions for automated sync
- Slack notifications for sync events
- Integration with agent validation workflow
- Document approval workflows

---

**Last Updated:** 2025-08-07  
**Next Review:** Monthly during active discovery phases