# Agent Roles by Development Phase

**Purpose:** Clarify which agents enforce constraints during which phases to maximize discovery flexibility while maintaining domain rigor.

## Phase-Based Agent Engagement

### Discovery Phase: Complete Freedom Zone

**Primary Agents (Full Freedom):**
- **researcher** - Unrestricted market analysis using any frameworks
- **strategist** - Business model exploration without domain constraints  
- **designer** - User experience research and design ideation

**Agent Responsibilities:**
- Use any terminology, frameworks, or methodologies
- Focus on problem understanding and solution exploration
- Prioritize user needs and business opportunities over architectural purity
- Document insights in whatever format serves understanding best

**Constrained Agents (Limited Involvement):**
- **architect** - Only consulted for feasibility questions, NO architectural enforcement
- **documentation** - NO ubiquitous language enforcement during discovery
- **security** - Only high-level security consideration input, NO compliance enforcement

### Validation Phase: Translation and Review Gateway

**Primary Agents (Active Enforcement):**
- **documentation** - Creates domain terminology from discovery findings
- **architect** - Reviews architectural feasibility and bounded context proposals
- **security** - Performs comprehensive security assessment
- **orchestrator** - Manages discovery-to-domain translation process

**Secondary Agents (Review and Input):**
- **researcher** - Validates business assumptions in domain context
- **strategist** - Confirms business model alignment with domain boundaries
- **designer** - Reviews user experience against domain model

**Translation Process:**
1. Discovery findings collected and cataloged
2. Business concepts identified and mapped
3. Domain terminology created collaboratively
4. Bounded contexts proposed and validated
5. Core domain priorities established

### Domain Phase: Full DDD Enforcement

**Primary Agents (Strict Enforcement):**
- **architect** - Full hexagonal architecture compliance required
- **documentation** - Strict ubiquitous language enforcement
- **backend** - Domain model implementation with DDD patterns
- **integrator** - Adapter implementation following port/adapter pattern
- **frontend** - UI implementation reflecting domain concepts
- **tester** - Comprehensive testing strategy and implementation
- **code-reviewer** - Code quality and architectural compliance verification

**All Agents:** Domain phase requires all agents to follow established domain rules and terminology.

## Agent Behavior Guidelines

### Discovery Phase Agent Behavior

**researcher:**
```
✅ DO: Use industry-standard terminology
✅ DO: Apply any market research frameworks
✅ DO: Reference competitors with their own language
✅ DO: Explore tangential market opportunities
❌ DON'T: Worry about domain concepts
❌ DON'T: Constrain research to "domain-appropriate" topics
```

**strategist:**
```
✅ DO: Explore multiple business models
✅ DO: Use standard product terminology
✅ DO: Reference industry frameworks (Jobs-to-be-Done, etc.)
✅ DO: Prioritize based on business value, not domain purity
❌ DON'T: Force early domain boundaries
❌ DON'T: Constrain feature thinking to architectural patterns
```

**designer:**
```
✅ DO: Focus on user needs and workflows
✅ DO: Use standard UX terminology and methods
✅ DO: Design optimal user experience flows
✅ DO: Reference design patterns and frameworks
❌ DON'T: Constrain design to domain entity structure
❌ DON'T: Worry about bounded context boundaries in UX
```

### Validation Phase Agent Behavior

**documentation:**
```
✅ DO: Translate discovery terms to domain concepts
✅ DO: Create ubiquitous language from business insights
✅ DO: Identify terminology conflicts and resolve them
✅ DO: Work collaboratively on language evolution
❌ DON'T: Reject discovery findings for "wrong" terminology
❌ DON'T: Enforce domain language retroactively on discovery
```

**architect:**
```
✅ DO: Review bounded context proposals for cohesion
✅ DO: Assess technical feasibility of discovery insights
✅ DO: Propose architectural approaches for business capabilities
✅ DO: Validate that domain boundaries serve business goals
❌ DON'T: Reject business concepts for architectural reasons alone
❌ DON'T: Force premature architectural decisions
```

### Domain Phase Agent Behavior

**All Agents:**
```
✅ DO: Use established ubiquitous language consistently
✅ DO: Respect bounded context boundaries
✅ DO: Follow established domain patterns
✅ DO: Maintain architectural integrity
❌ DON'T: Introduce new domain concepts without validation
❌ DON'T: Break established domain boundaries
```

## Agent Invocation Guidelines

### Discovery Phase Usage
```bash
# Encouraged
"Have the researcher analyze the competitive landscape"
"Ask the strategist to explore revenue models"  
"Use the designer to map user journeys"

# Discouraged
"Have the architect review this user story" (too early)
"Ask the documentation to create domain terms" (premature)
```

### Validation Phase Usage
```bash
# Required
"Use the orchestrator to manage discovery-to-domain translation"
"Have the documentation create domain terminology"
"Ask the architect to review bounded context proposals"

# Collaborative
"Have the researcher validate business assumptions in domain context"
```

### Domain Phase Usage
```bash
# Standard DDD enforcement
"Have the architect review this domain model"
"Ask the documentation to validate terminology usage"
"Use the backend to implement this aggregate"
"Have the integrator implement adapters for external systems"
```

---

**Key Principle:** Agent constraints should match the phase's purpose - maximum flexibility during discovery, structured translation during validation, and rigorous enforcement during domain modeling.