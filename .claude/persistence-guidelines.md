# Agent knowledge persistence guidelines

## Memory hierarchy approach

### Project memory (team-shared): `./CLAUDE.md`
- Architecture decisions and patterns
- Integration documentation  
- Domain model updates
- Testing patterns and workflows
- Coding and writing standards

### User memory (personal): `~/.claude/CLAUDE.md`
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
Create new `.claude/` files when:
- Knowledge doesn't fit existing categories
- File becomes too large (>200 lines)
- Distinct bounded context emerges

### Import updates
1. Create file in `.claude/` directory
2. Add `@.claude/filename.md` import to `./CLAUDE.md`
3. Order imports logically (foundational first)

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
- Sentence case headers, British English spelling
- Focused, actionable content
- Regular review and updates