# Domain model and ubiquitous language

## Domain glossary location
- **Primary Reference**: `/domain/glossary.md` (THE authoritative source)
- **Context Definitions**: `/domain/bounded-contexts/`
- **Aggregate Documentation**: `/domain/aggregates/`

## Translation rules (strict)
- Technical → Business: MUST use ubiquitous language terms
- Business → Technical: MUST map to existing domain concepts  
- User Documentation: MUST align with domain mental models
- API Documentation: MUST reflect bounded contexts
- Error Messages: MUST use domain-appropriate language

## Domain model alignment
- Features must fit within existing bounded contexts
- New capabilities must respect aggregate boundaries
- User roles must map to domain personas
- Business rules must be captured as domain constraints
- Success metrics must track domain events

## Documentation review checklist
1. Does this use the correct domain terminology?
2. Is the ubiquitous language consistent?
3. Are bounded contexts properly respected?
4. Does this reveal or hide appropriate domain complexity?
5. Will a business stakeholder understand this?
6. Will a developer implement this correctly?

## Critical documentation artifacts
- `/domain/glossary.md` - THE ubiquitous language reference
- `/domain/bounded-contexts/` - Context definitions and boundaries
- `/domain/aggregates/` - Business invariant documentation
- `/architecture/decisions/` - ADRs with business rationale
- `/architecture/hexagonal/` - Ports and adapters mapping