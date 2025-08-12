# Development workflows and testing patterns

## "Write tests, commit; code, iterate, commit" workflow

### Testing-first development process
1. **Write tests first** - Define expected behaviour
2. **Commit tests** - Commit failing tests with clear intent
3. **Implement code** - Make tests pass with minimal viable solution  
4. **Iterate and refine** - Improve while keeping tests green
5. **Commit working code** - Commit complete implementation

### Commit message format
```
<type>(<scope>): <description>

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>
```

### Testing pyramid for hexagonal architecture
- **Domain tests**: Fast, isolated, business logic focused (100% coverage)
- **Application tests**: Use case orchestration with test doubles (95% coverage)
- **Adapter tests**: Infrastructure integration, slower (80% coverage)
- **End-to-end tests**: Complete user journeys, slowest
- **Contract tests**: Port-adapter boundary verification (100% coverage)

### Quality assurance process
- Test-first development for domain logic
- Behaviour-driven development aligned with business scenarios
- Continuous testing with CI/CD integration
- Test maintenance with architectural evolution
- Quality metrics per architectural layer

### Git workflow standards
- Run git status and git diff before committing
- Check git log for commit message style consistency
- Add relevant untracked files to staging area
- Never use git commands with -i flag (interactive)
- Do not create empty commits
- Use HEREDOC for commit messages for proper formatting

### Performance testing strategy
- Load testing at adapter boundaries
- Stress testing for domain logic under high volume  
- Performance regression testing for architectural changes
- Resource utilisation monitoring per layer
- Scalability testing aligned with growth projections

### Integration testing requirements
- Comprehensive integration tests for all adapters
- Mock external dependencies for domain unit tests
- Circuit breakers and retry patterns
- Graceful failure scenario handling
- Integration event logging for debugging