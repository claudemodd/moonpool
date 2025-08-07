# Project Moonpool Research

> **Project-specific discovery space - DDD-exempt exploration**

## Purpose

This directory contains Project Moonpool's specific research, discovery, and validation activities. Unlike the agent templates, this content is project-specific and not governed by strict DDD principles during exploration phases.

## Directory Structure

```
research/
├── market-exploration/     # Moonpool market research
├── product-discovery/      # Moonpool product concepts  
├── user-interviews/        # Moonpool user research
└── validation-reviews/     # Agent validation artifacts
```

## Workflow Integration

### Discovery → Validation → Implementation

1. **Free Research** in exploration directories
2. **Agent Validation** in validation-reviews/
3. **Domain Implementation** in ../src/

## Agent System Integration

Reference agent templates from:
- `../agents/discovery/` (structure templates)
- `../agents/validation/` (validation templates)  
- `../agents/domain/` (domain model guidance)

But work in **this project-specific space** to avoid polluting the agent repository.

## Research Freedom

Feel free to use:
- Any terminology during exploration
- External frameworks and references
- Unstructured documentation
- Industry standard language

Domain language enforcement happens during validation and implementation phases.

---

**Project:** Moonpool  
**Agent System:** [Hypha Lab Multi-Agent System](https://github.com/claudemodd/hypha-agents)