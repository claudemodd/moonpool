# Hexagonal architecture and domain-driven design principles

## Hexagonal architecture requirements

**DOMAIN CORE**: Pure business logic with zero framework dependencies
**PORTS**: Define interfaces for all external interactions  
**ADAPTERS**: Implement infrastructure concerns separately
**Dependencies**: ALWAYS point inward (adapters → ports → domain)
**Testing**: Domain must be 100% testable without infrastructure

## External integration architecture

### Documentation publishing ports
- **DocumentationPublisher**: Abstract interface for publishing documentation
- **DocumentationFormatter**: Transform internal docs to external formats
- **PublicationPolicy**: Define what gets published and how
- **AccessControlPolicy**: Manage granular permissions and security

### Notion integration adapter pattern
Following Anthropic's official MCP (Model Context Protocol) recommendations:
- **Local MCP server**: Direct integration through Claude Desktop
- **Minimal privilege access**: Granular page/database permissions
- **Explicit authentication**: User-controlled API token management
- **Modular configuration**: Separation between AI assistant and workspace

## Domain-driven design requirements

**BOUNDED CONTEXTS**: Clearly defined and enforced
**AGGREGATES**: Protect business invariants
**ENTITIES & VALUE OBJECTS**: Properly distinguished  
**DOMAIN EVENTS**: Capture business occurrences
**UBIQUITOUS LANGUAGE**: Use ONLY terms from the domain glossary
**REPOSITORIES**: Abstract persistence completely

## Architectural review checklist

- Does this respect bounded context boundaries?
- Are we leaking infrastructure into the domain?
- Is the ubiquitous language being used correctly?
- Are aggregates protecting invariants?
- Can the domain be tested in complete isolation?
- Are ports and adapters properly separated?

## Code organisation

```
/domain
  /model (entities, value objects, aggregates)
  /services (domain services)
  /events (domain events)
  /ports (repository interfaces, service interfaces)
/application
  /usecases (application services)
  /dto (data transfer objects)
/infrastructure
  /adapters (repositories, external services)
  /api (REST/GraphQL controllers)
  /persistence (database implementations)
```

## Security architecture

- Security as adapter layer concern
- Domain focuses on business rules
- Authentication/Authorization through ports
- Audit events as domain events
- Encryption in infrastructure adapters