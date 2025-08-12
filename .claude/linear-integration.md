# Linear integration for project management

## Project Moonpool Linear workspace
- **Project URL**: https://linear.app/hypha-labs/project/moonpool-b8284f0932a5
- **Project ID**: d7c559df-9782-4696-8d07-4b1fe7476fd2
- **Team**: Hypha labs

## Integration overview
Linear MCP server provides comprehensive project management capabilities for all Project Moonpool agents.

## Available capabilities
- **Issue management**: Create, update, list, and search issues
- **Project operations**: Manage projects and track progress
- **Team workflows**: Access team information and development workflows
- **Comment system**: Add and update comments on issues
- **Status tracking**: Update issue states (Backlog, Todo, In Progress, Done)
- **Priority and labels**: Set priorities and apply organisational labels
- **Documentation tracking**: Create issues for documentation and track progress

## Agent usage patterns
All agents can interact with Linear using natural language:
- "Create a Linear issue for implementing user authentication"
- "Show me all high-priority issues assigned to the development team"
- "Update issue LP-123 status to In Progress"
- "List all open issues related to domain model refinement"
- "Create a Linear issue to document the hexagonal architecture patterns"
- "Track progress on Project Moonpool market research documentation"
- "Add a comment to document the domain model evolution findings"

## Authentication setup
**Initial setup required**: Users must complete OAuth authentication:
1. Run any Linear command in Claude Code
2. Browser window opens for Linear authentication
3. Grant permissions to MCP server
4. Connection established for all agents

## Workflow integration
### Test-driven development alignment
- Create Linear issues for test scenarios before implementation
- Link issues to specific test cases and domain requirements
- Track testing coverage and quality metrics

### Agent collaboration tracking
All agents use Linear for task tracking aligned with their specialisations.

### Domain-driven design integration
- Link Linear issues to bounded context development
- Track aggregate implementation and domain model evolution
- Manage ubiquitous language consistency across development

## Project structure alignment
Issues should follow Project Moonpool's architectural principles:
- **Labels**: Use bounded context names for organisation
- **Priorities**: Align with business value and architectural impact
- **Projects**: Group by architectural layers (domain, application, infrastructure)
- **Teams**: Align with agent specialisations and responsibilities

## Best practices
- Use descriptive issue titles with bounded context prefixes
- Link related issues for architectural dependencies
- Tag issues with relevant agent types for specialised work
- Maintain issue lifecycle alignment with git workflow
- Reference Linear issues in commit messages for traceability

## Connection management
- Connection requires periodic re-authentication via OAuth
- All agents share the same Linear workspace connection
- Connection status can be checked with `claude mcp list`
- Re-authentication may be needed if connection fails

## Quality assurance
- Track agent system improvements through Linear issues
- Monitor integration performance and connection stability
- Document lessons learned for agent system optimisation
- Maintain clear separation between development tasks and agent system tasks