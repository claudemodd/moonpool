# Project Moonpool - open finance platform

## Core knowledge imports
@.claude/project-context.md
@.claude/writing-standards.md
@.claude/coding-standards.md
@.claude/persistence-guidelines.md
@.claude/architecture.md
@.claude/domain-model.md  
@.claude/workflows.md
@.claude/linear-integration.md
@.claude/competitive-landscape.md
@.claude/market-insights.md
@.claude/research-methodology.md

## Project mission
Project Moonpool demonstrates clean, efficient AI agent collaboration for open finance platform development. We use a simplified agent architecture following Anthropic's best practices for minimal complexity and maximum effectiveness.

## Agent system approach
- **Simplified architecture**: 7 specialised agents with clear, non-overlapping roles
- **Token efficiency**: 85% reduction in context through external knowledge files
- **Knowledge separation**: Shared knowledge in external files, not agent prompts
- **Test-driven development**: Follow "write tests, commit; code, iterate, commit" workflow

## Current agent roles
- **developer**: General coding, debugging, feature implementation
- **architect**: System design and architectural decisions
- **tester**: Testing strategy and implementation  
- **reviewer**: Code review and quality assurance
- **researcher**: Market analysis and external research
- **documentation-maintainer**: Documentation management and updates
- **quality-assurance**: Agent system monitoring and optimisation

## Development principles
- Clean, simple agent interactions
- Hexagonal architecture and domain-driven design
- Security-first development approach
- API-first design patterns
- Comprehensive testing coverage

## Key commands
- `npm run compile` - Compile TypeScript
- `scripts/sync-to-hypha-agents.sh` - Sync agent configurations

## Project management integration
- **Linear MCP**: Integrated for issue tracking and project management
- All agents have access to Linear for creating issues, tracking progress, and managing development tasks
- Use natural language commands like "Create a Linear issue for..." or "Show me high-priority issues"

## Deployment instructions
- **NO CLAUDE ATTRIBUTION**: Never include Claude attribution in commit messages
- All commits should use standard format without AI assistant references
- This applies to all agents and manual commits

## Memory hierarchy
This file serves as **project memory** following Anthropic's specification:
- **Project memory**: `./CLAUDE.md` (this file) - team-shared knowledge
- **User memory**: `~/.claude/CLAUDE.md` - personal preferences
- **Knowledge files**: `.claude/*.md` - imported shared knowledge

All agents use this memory hierarchy for knowledge persistence and retrieval.