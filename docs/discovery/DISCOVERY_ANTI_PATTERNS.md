# Discovery Phase Anti-Patterns

**Purpose:** Explicit guidance on what NOT to do during discovery to maintain maximum exploration flexibility.

## Critical Anti-Patterns to Avoid

### 🚫 Premature Domain Modeling

**Anti-Pattern:** Forcing domain concepts during exploration
```
❌ Bad: "Let's define this as a User aggregate with BusinessRule value objects"
✅ Good: "Let's understand how people actually use this feature"

❌ Bad: "This needs to fit our bounded contexts"  
✅ Good: "Let's see how this business capability relates to others"

❌ Bad: "Use ubiquitous language terms"
✅ Good: "Use whatever terms help us understand the problem"
```

**Why It's Harmful:**
- Constrains thinking before understanding the full problem
- Forces premature architectural decisions
- Limits exploration of alternative approaches
- Can miss important user and business insights

### 🚫 Architectural Constraint Application

**Anti-Pattern:** Applying hexagonal architecture rules during discovery
```
❌ Bad: "This violates separation of concerns"
✅ Good: "Let's understand what users need here"

❌ Bad: "We need to design ports and adapters"
✅ Good: "Let's map out the complete user workflow"

❌ Bad: "This doesn't follow clean architecture"
✅ Good: "What would make this easiest for users?"
```

**Why It's Harmful:**
- Technical constraints can obscure business insights
- Architecture should serve business needs, not constrain discovery
- Premature optimization limits creative solutions

### 🚫 Documentation Formality Enforcement

**Anti-Pattern:** Requiring structured documentation during exploration
```
❌ Bad: "This needs to follow our documentation template"
✅ Good: "Document insights however they make most sense"

❌ Bad: "Clean up these rough notes"
✅ Good: "Keep capturing ideas as they emerge"

❌ Bad: "This terminology isn't consistent"
✅ Good: "Use whatever terms help communicate the insight"
```

**Why It's Harmful:**
- Formal documentation slows exploration
- Premature structure can hide important nuances
- Inconsistent terminology often reveals important distinctions

### 🚫 Solution Fixation

**Anti-Pattern:** Committing to specific solutions too early
```
❌ Bad: "We'll build a React app with a Node.js API"
✅ Good: "What user experience would be most valuable?"

❌ Bad: "This is definitely a microservices architecture"
✅ Good: "Let's understand all the business capabilities first"

❌ Bad: "We need to use this specific framework"
✅ Good: "What requirements do we need to support?"
```

**Why It's Harmful:**
- Premature solution commitment limits exploration
- Technology choices should be informed by business needs
- Early technical decisions constrain feature possibilities

### 🚫 Terminology Standardization Pressure

**Anti-Pattern:** Enforcing consistent language during discovery
```
❌ Bad: "Everyone must use the same terms for everything"
✅ Good: "Let different perspectives use their natural language"

❌ Bad: "That's not the right word for this concept"
✅ Good: "Interesting - why do you use that term?"

❌ Bad: "We need to agree on definitions now"
✅ Good: "Let's collect different ways people think about this"
```

**Why It's Harmful:**
- Different terminology often reveals important insights
- Premature standardization can hide business complexity
- Natural language evolution provides valuable information

### 🚫 Completeness Requirements

**Anti-Pattern:** Requiring exhaustive documentation before moving forward
```
❌ Bad: "We need to document everything before we can proceed"
✅ Good: "What do we need to know to test our biggest assumptions?"

❌ Bad: "This research isn't comprehensive enough"
✅ Good: "Do we have enough to make informed decisions about next steps?"

❌ Bad: "We need more data before we can conclude anything"
✅ Good: "What patterns are emerging that we should explore further?"
```

**Why It's Harmful:**
- Perfect information is never available during discovery
- Paralysis by analysis prevents learning through action
- Diminishing returns on additional research

## Positive Patterns to Embrace

### ✅ Terminology Diversity
- Collect different ways stakeholders describe the same concepts
- Note when different groups use different language
- Preserve authentic user language in research documentation

### ✅ Messy Documentation
- Allow sketches, rough notes, and incomplete thoughts
- Keep brainstorming outputs in their raw form
- Document assumptions and hypotheses as they emerge

### ✅ Multiple Perspectives  
- Include different stakeholder viewpoints
- Capture conflicting requirements and opinions
- Document edge cases and unusual scenarios

### ✅ Iterative Understanding
- Build understanding through multiple research cycles
- Allow insights to evolve and change
- Keep hypotheses testable and provisional

### ✅ Problem-First Thinking
- Start with user and business problems
- Delay solution discussion until problems are well understood
- Focus on "why" before "how"

## Phase Transition Signals

### When Discovery Anti-Patterns Become Appropriate
**During Validation Phase:**
- Domain terminology standardization becomes required
- Architectural constraints become relevant
- Documentation consistency becomes important
- Solution evaluation becomes necessary

**During Domain Phase:**
- All DDD and hexagonal architecture rules apply
- Ubiquitous language enforcement is mandatory
- Formal documentation structure is required
- Technical implementation patterns are enforced

## Recovery from Anti-Patterns

### If You Notice These Anti-Patterns:
1. **Stop and reset** - Acknowledge the constraint is premature
2. **Return to problem space** - Refocus on user and business needs
3. **Broaden exploration** - Look for alternative approaches
4. **Document assumptions** - Make implicit constraints explicit
5. **Plan for later** - Note architectural concerns for validation phase

### Signs You're in Anti-Pattern Territory:
- Research feels constrained or limited
- Team is debating technical implementation details
- Documentation feels formal and rigid
- Alternative approaches are being dismissed quickly
- Domain/architectural terms dominate discussions

---

**Remember:** Discovery is about understanding problems deeply. All other concerns come later when we understand what we're actually building and why.