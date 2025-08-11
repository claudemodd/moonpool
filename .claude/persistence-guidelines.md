# Agent knowledge persistence guidelines

## Memory hierarchy approach

Following Anthropic's memory hierarchy specification, agents should persist knowledge at the appropriate level:

### Project memory (team-shared)
**Location**: `./CLAUDE.md` (project root)
**Purpose**: Knowledge that benefits the entire team working on this project
**Examples**:
- Architecture decisions and patterns
- Integration documentation  
- Domain model updates
- Testing patterns and workflows
- Coding and writing standards for this project

### User memory (personal)  
**Location**: `~/.claude/CLAUDE.md` (user home directory)
**Purpose**: Personal learnings and preferences that span projects
**Examples**:
- Personal coding preferences
- Tool configurations
- Learning notes
- Individual workflow patterns

## Agent persistence rules

### When to update existing files
- **Architecture decisions** → Update `.claude/architecture.md`
- **Domain concepts** → Update `.claude/domain-model.md`
- **Coding standards** → Update `.claude/coding-standards.md`  
- **Writing standards** → Update `.claude/writing-standards.md`
- **Testing approaches** → Update `.claude/workflows.md`

### When to create new files
Create new files in `.claude/` directory when:
- Knowledge doesn't fit existing categories
- File would become too large (>200 lines)
- Distinct bounded context emerges

### Import updates
When creating new knowledge files, agents must:
1. Create file in `.claude/` directory
2. Add import to `./CLAUDE.md` using `@.claude/filename.md` syntax
3. Place imports in logical order (foundational first)

## Memory level decision matrix

| Knowledge Type | Project | User | Rationale |
|----------------|---------|------|-----------|
| Architecture decisions | ✅ | ❌ | Team needs alignment |
| Integration patterns | ✅ | ❌ | Shared implementation |  
| Domain model | ✅ | ❌ | Business alignment |
| Coding standards | ✅ | ❌ | Project consistency |
| Writing standards | ✅ | ❌ | Documentation consistency |
| Personal coding style | ❌ | ✅ | Individual preference |
| Tool configurations | ❌ | ✅ | Personal setup |
| Learning notes | ❌ | ✅ | Individual knowledge |

## Quality standards
- Follow sentence case in headers
- Use British English spelling
- Keep content focused and actionable
- Review and update regularly
- Remove outdated information