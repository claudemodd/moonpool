# Project Moonpool Documentation

> **Three-Phase Development Documentation System**

## Three-Phase Documentation Flow

### Discovery Phase → Complete Freedom Zone
```
docs/discovery/              # DDD-exempt exploration (manual documentation)
├── market-exploration/      # Market research using ANY frameworks
├── product-discovery/       # Product concepts with ANY terminology  
├── user-interviews/         # User research in AUTHENTIC language
├── templates/               # Flexible research templates
├── DISCOVERY_METHODOLOGY.md # Domain-Driven Discovery best practices
├── DISCOVERY_ANTI_PATTERNS.md # What NOT to enforce during discovery
└── README.md               # Complete freedom guidelines
```

### Validation Phase → Translation Gateway
```
docs/validation/
├── domain-translation/      # Discovery-to-Domain concept mapping
├── concept-review/          # Business model validation
├── technical-feasibility/   # Platform Architect review
├── architecture-review/     # Hexagonal architecture validation
├── security-assessment/     # Security Agent review
├── agent-feedback/          # Multi-agent collaboration
└── README.md               # Translation process documentation
```

### Domain Phase → DDD Enforcement
```
docs/domain/
├── contexts/                # Bounded context definitions (DDD-enforced)
├── glossary/                # Ubiquitous language (strictly maintained)
└── README.md               # Domain modeling guidelines
```

## Documentation Workflow

### Core Process
1. **Create/Edit** documentation in appropriate phase directories
2. **Collaborate** using your preferred review and discussion tools
3. **Iterate** based on feedback and evolving understanding
4. **Commit** to git for version control and team coordination

### Phase Transitions
- **Discovery → Validation:** Package findings for agent review and domain translation
- **Validation → Domain:** Establish validated concepts with proper domain terminology

## Terminology Evolution Process

**Discovery Phase:** Complete freedom - any terminology, any frameworks, authentic user language
↓  
**Validation Phase:** Translation layer maps discovery insights to domain concepts  
↓  
**Domain Phase:** Strict ubiquitous language enforcement and DDD compliance

### Discovery Freedom Examples:
- **Market Research:** Use "customers," "users," "buyers" - whatever serves understanding
- **Product Strategy:** Apply Lean Canvas, Jobs-to-be-Done, OKRs - any relevant framework
- **UX Design:** Focus on user mental models, not domain entity structure
- **Documentation:** Rough notes, sketches, brainstorms - whatever captures insights

### Translation Examples:
- "Customer acquisition workflow" → "User Onboarding" bounded context
- "Data analytics dashboard" → "Reporting and Analytics" domain service
- "User engagement features" → "User Experience Enhancement" aggregate

## Agent System Integration

The simplified 7-agent architecture uses Claude Code subagents located in `.claude/agents/` for:
- **developer**: General coding, debugging, feature implementation
- **architect**: System design and architectural decisions
- **tester**: Testing strategy and implementation  
- **reviewer**: Code review and quality assurance
- **researcher**: Market analysis and external research
- **documentation-maintainer**: Documentation management and updates
- **quality-assurance**: Agent system monitoring and optimisation

**Key improvements in new architecture:**
- **85% token reduction**: Shared knowledge in external files, not agent prompts
- **Clear role separation**: No overlapping responsibilities between agents
- **Efficient collaboration**: Agents reference shared knowledge files in `.claude/` directory
- **Knowledge persistence**: Structured approach to maintaining and updating shared knowledge

All **Project Moonpool specifics** are documented in this `/docs/` directory and the `.claude/` knowledge files.

## Documentation Principles

- **Phase-Appropriate Freedom**: Each phase has different constraint levels
- **Version Control First**: Git repository is the primary source of truth
- **Agent Coordination**: Documentation supports multi-agent workflow
- **Iterative Evolution**: Documentation evolves with understanding

---

**Project:** Moonpool  
**Agent System:** Multi-agent development workflow with discovery-domain separation