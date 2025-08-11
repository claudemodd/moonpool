# Project Moonpool - directory structure

**Last Updated:** 2025-08-11  
**Maintained by:** Documentation Agent  

## Root structure

```
project-moonpool/
├── CLAUDE.md                       # Project memory (Anthropic hierarchy)
├── .claude/                        # Agent system and knowledge
│   ├── agents/                     # Agent configurations
│   │   ├── developer.md            # General development agent
│   │   ├── architect.md            # Architecture decisions agent
│   │   ├── tester.md               # Testing strategy agent
│   │   ├── reviewer.md             # Code review agent
│   │   ├── researcher.md           # Market research agent
│   │   ├── quality-assurance.md    # Agent system QA
│   │   └── documentation-maintainer.md # Documentation management
│   ├── architecture.md             # Hexagonal architecture principles
│   ├── coding-standards.md         # Development standards
│   ├── domain-model.md             # Domain-driven design concepts
│   ├── workflows.md                # Testing and development workflows
│   ├── writing-standards.md        # Documentation standards
│   └── persistence-guidelines.md  # Agent knowledge persistence rules
├── docs/                           # Project documentation
│   ├── discovery/                  # Discovery phase research
│   │   ├── market-exploration/     # Market research and analysis
│   │   ├── product-discovery/      # Product concepts and features
│   │   ├── user-interviews/        # User research and feedback
│   │   └── templates/              # Research templates
│   ├── validation/                 # Validation phase artifacts
│   │   └── domain-translation/     # Domain translation documentation
│   ├── domain/                     # Domain phase artifacts (future)
│   └── directory-structure.md      # This file - project structure documentation
├── scripts/                        # Utility scripts
│   └── sync-to-hypha-agents.sh     # Agent system sync
├── package.json                    # Node.js dependencies
├── package-lock.json               # Dependency lock file
└── tsconfig.json                   # TypeScript configuration
```

## Memory hierarchy (Anthropic specification)

### Project memory
- **Location**: `./CLAUDE.md` (project root)
- **Purpose**: Team-shared knowledge and project configuration
- **Imports**: Knowledge from `.claude/` directory

### User memory  
- **Location**: `~/.claude/CLAUDE.md` (user home directory)
- **Purpose**: Personal preferences across all projects

## Agent system

### Optimised agent architecture
- **7 agents**: Streamlined from original 10+ for token efficiency
- **Knowledge separation**: Shared knowledge in external files, not agent prompts
- **Clear roles**: No overlapping responsibilities between agents
- **Persistence guidance**: Each agent knows where to store knowledge

### Agent roles
- **developer**: General coding, debugging, feature implementation
- **architect**: System design and architectural decisions  
- **tester**: Testing strategy and implementation
- **reviewer**: Code review and quality assurance
- **researcher**: Market analysis and external research
- **documentation-maintainer**: Documentation management and updates
- **quality-assurance**: Agent system monitoring and optimisation

## Development workflow

### Three-phase approach
1. **Discovery phase**: Free exploration and research (active)
2. **Validation phase**: Multi-agent review and validation (framework ready)
3. **Domain phase**: Domain-driven design implementation (future)

### Agentic product development
- **Agent-driven development**: AI agents handle specialised tasks
- **Test-driven development**: "Write tests, commit; code, iterate, commit"
- **Knowledge persistence**: Agents update shared knowledge files
- **Token efficiency**: 85% reduction in agent context through external knowledge

---

**Note**: This structure follows Anthropic's memory hierarchy specification and supports the simplified agentic development approach.