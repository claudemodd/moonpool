# Project Moonpool context

## Project overview
**Purpose**: Open finance platform for modern financial management
**Mission**: Enrich financial data with real-world context (energy markets, time economics, life events) and provide conversational AI access to holistic financial insights

**Core hypothesis**: By structuring enriched financial data semantically for AI agents, we can provide genuinely useful financial insights for complex modern financial decisions.

## Key differentiators
- **Holistic financial health**: Time economics, energy cost optimisation, housing decisions, life event modelling
- **Conversational intelligence**: Natural language interaction with enriched financial data
- **Privacy-first**: Sustainable model without exploitation or dark patterns
- **Modern reality**: Built for volatile markets and multiple income streams

## Current project status
- **Phase**: Early development and architecture definition
- **Architecture**: Hexagonal with domain-driven design (see @.claude/architecture.md)
- **Agent system**: 7 specialised agents with clear, non-overlapping roles
- **Development approach**: Test-driven following "write tests, commit; code, iterate, commit" workflow

## Active development areas
1. **Domain model refinement**: Financial concepts, aggregates, and bounded contexts
2. **Data enrichment pipeline**: Integration with energy markets and time economics
3. **AI agent infrastructure**: Conversational interface and context management
4. **Privacy architecture**: Transparent data handling and synthetic data generation

## Critical constraints
- **No framework dependencies** in domain layer
- **100% domain test coverage** with zero infrastructure dependencies
- **API-first design** reflecting bounded context boundaries
- **Security-first development** with input validation and secret management

## Reference architecture
See `@.claude/architecture.md` for complete architectural principles and patterns.

## Key commands
- `npm run compile` - TypeScript compilation
- `scripts/sync-to-hypha-agents.sh` - Agent configuration sync

## Documentation hierarchy
- **Project brief**: `docs/discovery/market-exploration/project-brief.md` (full market context)
- **Architecture decisions**: See @.claude/architecture.md
- **Domain concepts**: See @.claude/domain-model.md
- **Development standards**: See @.claude/coding-standards.md and @.claude/writing-standards.md