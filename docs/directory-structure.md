# Project Moonpool - Directory Structure

**Last Updated:** 2025-08-07  
**Maintained by:** Documentation Agent  
**Sync Responsibility:** Integration Agent

## Root Structure

```
project-moonpool/
├── docs/                           # Project documentation
│   ├── discovery/                  # Discovery phase (DDD-exempt)
│   │   ├── market-exploration/     # Market research and analysis
│   │   │   └── competitive-landscape.md
│   │   ├── product-discovery/      # Product concepts and features
│   │   │   ├── moonpool-initial-concept.md
│   │   │   └── project-overview.md
│   │   ├── user-interviews/        # User research and feedback
│   │   │   └── research-methodology.md
│   │   └── README.md              # Discovery phase guide
│   ├── validation/                 # Multi-agent validation gate
│   │   ├── concept-review/         # Business model validation
│   │   ├── technical-feasibility/  # Platform Architect review
│   │   ├── architecture-review/    # Hexagonal architecture validation
│   │   ├── security-assessment/    # Security Agent review
│   │   ├── agent-feedback/         # Multi-agent collaboration
│   │   └── README.md              # Validation phase guide
│   ├── domain/                     # Domain-driven design artifacts
│   │   ├── contexts/               # Bounded context definitions
│   │   ├── glossary/               # Project ubiquitous language
│   │   └── README.md              # Domain phase guide
│   ├── sync/                       # Documentation synchronization
│   │   ├── notion-sync.sh          # Notion API sync tooling
│   │   ├── .env.example            # Environment configuration
│   │   └── README.md              # Sync infrastructure guide
│   ├── directory-structure.md      # This file
│   └── SYNC_GUIDELINES.md         # Documentation workflow guide
├── agents/                        # Agent system (git submodule)
│   ├── agents/                    # Agent configurations
│   ├── discovery/                 # Discovery templates
│   ├── domain/                    # Domain model artifacts
│   ├── validation/                # Multi-agent validation
│   └── README.md                 # Agent system guide
└── README.md                      # Project root documentation
```

## Documentation Sync Mapping

### Local → Notion Sync Points
- `/docs/discovery/` → [Project Moonpool Notion Page](https://www.notion.so/Project-moonpool-248a6ef15e228151a198ee8a9be5b270)
- Discovery documents sync to Notion for collaborative review
- Directory structure tracked in this file

### Agent System Integration
- Hypha Agents system deployed via git submodule
- Independent versioning from project-specific documentation
- Discovery phase uses DDD-exempt exploration space

## Three-Phase Workflow Integration

### Discovery Phase (DDD-Exempt)
- **Purpose**: Free exploration and research
- **Content**: Market research, user interviews, product concepts
- **Status**: Active - research in progress
- **Agent Oversight**: Minimal - research freedom maintained

### Validation Phase (Multi-Agent Review)
- **Purpose**: Quality gate between exploration and domain modeling
- **Content**: Agent reviews, technical feasibility, security assessment
- **Status**: Framework established - awaiting discovery completion
- **Agent Oversight**: Full multi-agent validation required

### Domain Phase (DDD-Governed) 
- **Purpose**: Domain-driven design implementation
- **Content**: Bounded contexts, ubiquitous language, domain model
- **Status**: Not initiated - requires validation completion
- **Agent Oversight**: Documentation Agent enforces DDD compliance

## Directory Change Log

| Date | Change | Agent Responsible |
|------|--------|-------------------|
| 2025-08-07 | Initial structure created | Documentation Agent |
| 2025-08-07 | Added project-overview.md from Notion sync | Integration Agent |
| 2025-08-07 | Created complete three-phase workflow structure | Documentation Agent |
| 2025-08-07 | Populated discovery directories with extracted content | Documentation Agent |
| 2025-08-07 | Established validation and domain phase frameworks | Documentation Agent |

---

**Note**: This file is automatically maintained by the Documentation Agent and should reflect the current state of project documentation structure.