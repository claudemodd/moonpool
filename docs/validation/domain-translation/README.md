# Discovery-to-Domain Translation

**Purpose:** Bridge the gap between free-form discovery findings and structured domain-driven design.

## Translation Overview

This process transforms discovery insights (using any terminology or framework) into domain concepts that can be properly modeled using DDD principles.

## Translation Workflow

### Step 1: Discovery Harvest
**Collect and catalog all discovery findings:**
- Market research insights
- User research findings  
- Product concept documentation
- Competitive analysis
- Business model explorations
- Any notes, sketches, or brainstorming outputs

**Deliverable:** Discovery findings inventory

### Step 2: Business Concept Extraction
**Identify core business concepts that emerged:**
- **Entities:** Things with unique identity (users, products, orders, etc.)
- **Processes:** Business workflows and operations
- **Rules:** Business constraints and policies
- **Events:** Important business occurrences
- **Capabilities:** What the business can do
- **Data:** Important information the business manages

**Deliverable:** Business concept catalog

### Step 3: Domain Language Creation
**Work with Documentation Guardian agent to:**
- Review discovered terminology
- Identify ambiguous or overloaded terms
- Create clear, unambiguous domain terms
- Map discovery language to domain language
- Begin ubiquitous language glossary

**Deliverable:** Discovery-to-Domain terminology mapping

### Step 4: Bounded Context Identification
**Map business capabilities to potential domain boundaries:**
- Group related business concepts
- Identify natural seams in the business
- Look for areas of high cohesion, low coupling
- Consider team/organizational boundaries
- Analyze data ownership patterns

**Deliverable:** Proposed bounded context map

### Step 5: Core Domain Classification
**Use Core Domain Charts to prioritize:**

**Core Domains (Competitive Advantage):**
- Unique to your business
- Provide competitive differentiation
- High business value
- Complex business logic
- Examples: [To be filled during translation]

**Supporting Domains (Business Necessities):**
- Important but not differentiating
- Support core business operations
- Moderate complexity
- Examples: [To be filled during translation]

**Generic Domains (Commodity):**
- Common across industries
- No competitive advantage
- Buy vs. build candidates
- Examples: [To be filled during translation]

**Deliverable:** Core Domain Chart

### Step 6: Validation Preparation
**Prepare discovery insights for agent validation:**
- Package findings by domain area
- Highlight key business capabilities
- Document critical business rules
- Identify security/compliance requirements
- Map user journeys to business processes

**Deliverable:** Validation-ready documentation packages

## Translation Artifacts

### 1. Terminology Mapping Table
| Discovery Term | Domain Term | Definition | Context | Notes |
|----------------|-------------|------------|---------|-------|
|                |             |            |         |       |

### 2. Business Capability Map
```
High-Level Capability
├── Sub-Capability A
│   ├── Business Process 1
│   └── Business Process 2
└── Sub-Capability B
    ├── Business Process 3
    └── Business Process 4
```

### 3. Bounded Context Proposal
| Context Name | Business Capabilities | Key Entities | External Dependencies |
|--------------|----------------------|--------------|----------------------|
|              |                      |              |                      |

### 4. Core Domain Chart
**Visual representation of domain classification with business rationale**

## Quality Gates

### Translation Readiness Criteria
- [ ] All discovery findings have been reviewed
- [ ] Business concepts are clearly identified
- [ ] Terminology conflicts are resolved
- [ ] Bounded context boundaries are proposed
- [ ] Core domain priorities are established

### Agent Validation Handoff
- [ ] Documentation Guardian approves terminology
- [ ] Platform Architect reviews bounded contexts
- [ ] Product Strategist confirms business priorities
- [ ] Security Reviewer assesses requirements

## Translation Principles

### Preserve Discovery Insights
- Don't lose valuable discovery findings in translation
- Maintain traceability from discovery to domain concepts
- Keep context and reasoning for business decisions

### Enable Domain Modeling
- Create clear, unambiguous domain language
- Establish proper bounded context boundaries
- Identify aggregates and business invariants
- Support hexagonal architecture design

### Facilitate Agent Collaboration
- Package information appropriately for each agent type
- Provide business context for technical decisions
- Enable informed trade-off discussions
- Support architectural decision making

---

**Translation Status Tracking:**
- [ ] Discovery harvest complete
- [ ] Business concepts extracted
- [ ] Domain language created
- [ ] Bounded contexts identified
- [ ] Core domains classified
- [ ] Agent validation prepared