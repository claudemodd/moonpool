# Project Moonpool

> **Hypha Lab Project powered by Multi-Agent DDD/Hexagonal Architecture System**

## Agent System Integration

This project uses the Hypha Lab Multi-Agent System for Domain-Driven Design and Hexagonal Architecture enforcement.

### Agent Access

```bash
# Documentation Agent (ubiquitous language)
cat agents/agents/prompts/documentation_agent.md

# Platform Architect (DDD/Hexagonal enforcement)
cat agents/agents/prompts/platform_architect.md

# All available agents
ls agents/agents/prompts/
```

### Domain Model Reference

```bash
# Domain glossary and ubiquitous language
cat agents/domain/glossary/index.md

# Bounded context templates
ls agents/domain/contexts/
```

## Project Structure

```
project-moonpool/
├── src/                    # Project source code
├── docs/                   # Project documentation
├── research/               # Project-specific discovery (DDD-exempt)
│   ├── market-exploration/ # Market research for Moonpool
│   ├── product-discovery/  # Product concepts
│   ├── user-interviews/    # User feedback
│   └── validation-reviews/ # Agent validation artifacts
├── tests/                  # Project tests
└── agents/                 # Hypha Agent System (submodule)
    ├── agents/prompts/     # 12 specialized agent prompts
    ├── discovery/          # Agent discovery templates
    ├── validation/         # Agent validation templates
    └── domain/             # Domain model templates
```

## Development Workflow

### 1. Discovery Phase (DDD-Exempt)
Work in `/research/` directories for free exploration:
- Market research in `research/market-exploration/`
- Product concepts in `research/product-discovery/`
- User feedback in `research/user-interviews/`

### 2. Validation Phase
Move concepts to `research/validation-reviews/` for:
- Platform Architect review
- Security Agent assessment  
- Technical feasibility validation

### 3. Implementation Phase
Validated concepts become domain-governed code in `src/`

## Agent Updates

```bash
# Update agent system
cd agents
git pull origin main
cd ..
git add agents
git commit -m "Update Hypha agent system"
```

## Core Principles

- **Domain-Driven Design**: All code follows DDD principles
- **Hexagonal Architecture**: Clean separation of concerns
- **Ubiquitous Language**: Consistent domain terminology
- **Multi-Agent Validation**: Quality gates before implementation

---

**Powered by:** [Hypha Lab Multi-Agent System](https://github.com/claudemodd/hypha-agents)