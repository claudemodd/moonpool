# Writing guidelines for user-facing documentation

## Primary formatting rule: Always use sentence case

**Sentence case means:** Capitalize only the first word and proper nouns, like writing a normal sentence.

**Examples:**
- ✅ "Getting started with Project Moonpool"
- ❌ "Getting Started With Project Moonpool"
- ✅ "API authentication guide"
- ❌ "API Authentication Guide"

## Scope of these guidelines

### Apply these guidelines to:
- README files
- User guides and tutorials
- API documentation
- Project wikis and documentation sites
- Help documentation
- Feature documentation
- Installation and setup guides
- User-facing error messages
- Project descriptions and summaries

### Do NOT apply these guidelines to:
- Code comments
- Variable names, function names, class names
- File and directory names
- Technical documentation embedded in code
- Database schema documentation
- Internal technical specifications

## Writing standards

### Headers and titles
- **Main headings:** Use sentence case for all heading levels
- **Section titles:** Keep concise and descriptive
- **Navigation:** Use consistent terminology across all documentation

**Examples:**
```markdown
# Project overview
## Getting started
### Installation requirements
#### System dependencies
```

### Content structure
- **Lead with purpose:** Start each document with a clear explanation of what the reader will learn or accomplish
- **Use active voice:** "Configure the API" instead of "The API can be configured"
- **Write scannable content:** Use bullet points, numbered lists, and short paragraphs
- **Include practical examples:** Show real implementations, not abstract concepts

### Language consistency
- **Match the user's mental model:** Use terminology that aligns with how users think about the problem
- **Be consistent within documents:** If you call something a "dashboard" in one place, don't call it a "control panel" elsewhere
- **Define technical terms:** When introducing domain-specific concepts, provide clear definitions
- **Use inclusive language:** Write for diverse audiences and experience levels

### Phase-specific considerations

#### Discovery phase documentation
- **Freedom to explore:** Use any terminology that helps capture insights
- **Document authentically:** Preserve user language and market terminology
- **Focus on understanding:** Prioritize clarity over formal structure

#### Validation phase documentation
- **Bridge languages:** Clearly map between discovery terms and emerging domain concepts
- **Explain translations:** Show why terminology choices were made
- **Document decisions:** Record the reasoning behind conceptual changes

#### Domain phase documentation
- **Enforce ubiquitous language:** Use only approved domain terms
- **Be precise:** Every term must have a clear, consistent meaning
- **Reference the glossary:** Link to domain definitions when using specialized terms

## Format-specific guidelines

### README files
- **Start with a one-sentence description** of what the project does
- **Include a quick start section** for immediate value
- **Structure consistently:** Overview → Installation → Usage → Contributing

### API documentation
- **Use sentence case for endpoint descriptions**
- **Provide complete examples** with realistic data
- **Document error responses** with clear explanations

### User guides
- **Write step-by-step instructions** with expected outcomes
- **Include screenshots** when visual guidance helps
- **Test all procedures** before publishing

### Installation guides
- **List prerequisites clearly** with version requirements
- **Provide platform-specific instructions** when needed
- **Include troubleshooting sections** for common issues

## Quality checklist

Before publishing any user-facing documentation, verify:

### Format compliance
- [ ] All headers use sentence case
- [ ] Proper nouns are capitalized correctly
- [ ] Consistent terminology throughout the document

### Content quality
- [ ] Purpose is clear in the first paragraph
- [ ] Instructions are actionable and complete
- [ ] Examples work and provide value
- [ ] Links are functional and relevant

### Domain alignment
- [ ] Terminology matches the appropriate project phase
- [ ] Domain concepts are used correctly
- [ ] Translations between phases are documented

### User focus
- [ ] Written from the user's perspective
- [ ] Addresses real user needs and scenarios
- [ ] Accessible to the intended audience

## Review process

### Documentation reviews should check:
1. **Sentence case compliance** - Primary formatting requirement
2. **Domain language accuracy** - Correct use of project terminology
3. **User value** - Does this help users accomplish their goals?
4. **Completeness** - Are all necessary steps and information included?
5. **Clarity** - Can the intended audience understand and follow this?

### Review responsibilities:
- **Documentation Agent:** Enforces ubiquitous language and domain consistency
- **Phase-appropriate agents:** Validate content accuracy for their domain
- **Integration agents:** Ensure platform-specific documentation is correct

## Common mistakes to avoid

### Formatting errors
- ❌ Using title case in headers ("Getting Started With The API")
- ❌ Inconsistent capitalization patterns
- ❌ Over-capitalizing technical terms

### Content problems
- ❌ Writing for yourself instead of your users
- ❌ Assuming knowledge that users don't have
- ❌ Creating documentation that can't be tested or verified
- ❌ Using different terms for the same concept

### Domain violations
- ❌ Using technical terms when business terms exist
- ❌ Mixing terminology from different project phases
- ❌ Creating new terms without proper domain validation

## Tools and resources

### Domain reference
- **Ubiquitous language glossary:** `/docs/domain/glossary/` (when available)
- **Bounded context definitions:** `/docs/domain/contexts/`
- **Phase-specific terminology:** Documented in each phase's README

### Writing support
- **Templates:** Available in `/docs/discovery/templates/` for discovery phase
- **Style examples:** Reference existing documentation that follows these guidelines
- **Review checklist:** Use the quality checklist above before publishing

---

**Remember:** These guidelines exist to create consistent, user-focused documentation that supports the project's domain-driven development approach. When in doubt, prioritize user clarity and domain accuracy over rigid formatting rules.