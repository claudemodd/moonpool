# Project Moonpool Integration Strategy

**Purpose:** Document how Project Moonpool manages integrations separately from the generic hypha-agents framework.

## Integration Separation Philosophy

**Framework Responsibility:** Generic DDD/Hexagonal architecture patterns
**Project Responsibility:** Specific integration implementations and external platform connections

## Current Project Integrations

### 1. Claude Code Subagent Integration
**Location:** `.claude/agents/`
**Purpose:** Native Claude Code subagent workflow integration
**Agents:**
- `integration-specialist.md` - Manages external platform integrations
- All other agents customized for Moonpool domain

### 2. Notion Documentation Sync (Optional)
**Implementation:** Project-specific integration specialist agent
**Scope:** Bidirectional sync between local docs and Notion workspace
**Configuration:** 
- Integration specialist handles Notion API connections
- Sync tooling in `/docs/sync/` directory
- Environment-specific configuration

### 3. GitHub Integration  
**Purpose:** Repository automation and CI/CD integration
**Scope:** Automated workflows, issue tracking, deployment coordination
**Implementation:** Through automation-engineer agent with GitHub-specific knowledge

## Integration Agent Implementation

### integration-specialist.md (Project-Specific)
**Role:** Handle all external platform integrations for Project Moonpool
**Responsibilities:**
- Notion workspace synchronization (optional)
- GitHub repository automation
- External API integrations as needed
- Data pipeline management
- Deployment coordination

**Why Project-Specific:**
- Moonpool-specific Notion workspace configuration
- Company-specific GitHub workflows
- Financial domain-specific external APIs
- Custom authentication and security requirements

## Integration Patterns

### Pattern 1: Optional External Collaboration
```
Local Git Repository (Primary)
    ↕ (optional sync)
External Collaboration Platform (Notion, Confluence, etc.)
    ↕ (team collaboration)  
Team Review and Feedback
    ↕ (sync back)
Local Repository (version control)
```

### Pattern 2: CI/CD Integration
```
Code Changes (Local)
    → GitHub Repository
    → Automated Testing (GitHub Actions)
    → Security Scanning
    → Deployment Pipeline
    → Production Environment
```

### Pattern 3: External API Integration
```
Domain Logic (Pure)
    → Port Interface (Domain)
    → Adapter Implementation (Infrastructure)  
    → External API (Third-party service)
    → Anti-corruption Layer
    → Domain Event Publication
```

## Separation Benefits

### Framework Benefits (hypha-agents)
- **Reusable** across any project or business domain
- **Stable** - doesn't change when external platforms change
- **Focused** on architectural patterns, not integration details
- **Maintainable** without platform-specific dependencies

### Project Benefits (project-moonpool)
- **Flexible** integration choices based on team needs
- **Customizable** to specific business requirements
- **Evolvable** - can change integrations without framework impact
- **Controllable** integration complexity and dependencies

## Integration Guidelines

### ✅ Implement in Project
- External platform APIs (Notion, Salesforce, Stripe, etc.)
- CI/CD pipeline configurations
- Deployment automation scripts
- Business-specific data transformations
- Company-specific authentication flows

### ❌ Don't Add to Framework
- Platform-specific API clients
- Integration-specific business logic
- External service configurations
- Company-specific workflow patterns
- Technology stack assumptions

## Migration from Old Approach

### Previous State
- Integration agent was part of generic framework
- Platform-specific logic mixed with generic patterns
- External platform assumptions in framework code

### Current State  
- Integration specialist is project-specific
- Generic patterns stay in framework
- Platform integrations are implementation details
- Clear separation of concerns

### Benefits Achieved
- Framework remains reusable for any business domain
- Integration complexity stays in projects where it belongs
- Teams can choose their own integration strategies
- Framework contributions focus on architectural improvements

## Future Integration Considerations

### New External Platforms
**Process:**
1. Evaluate business need for integration
2. Implement through project-specific integration specialist
3. Keep integration logic in project, not framework
4. Extract any generic patterns for framework contribution

### Technology Stack Changes
**Impact:**
- Framework remains unchanged
- Update project-specific integration agents as needed
- Maintain domain model integrity through anti-corruption layers
- Preserve architectural patterns regardless of integration technology

### Team Collaboration Changes
**Flexibility:**
- Switch collaboration platforms without framework impact
- Customize sync frequency and methods per team preference
- Maintain git as primary source of truth
- Support multiple collaboration workflows simultaneously

---

**Key Principle:** Project Moonpool maintains full control over its integration strategy while benefiting from generic architectural patterns provided by the hypha-agents framework.