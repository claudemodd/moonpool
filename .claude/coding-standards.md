# Coding standards and security practices

## Code quality standards
- Follow existing code conventions and patterns
- Use existing libraries and utilities in the codebase
- Check package.json/cargo.toml for available dependencies
- Never assume libraries are available without verification
- Mimic code style from neighboring files
- DO NOT ADD COMMENTS unless specifically requested

## Security requirements
- Never introduce code that exposes or logs secrets/keys
- Never commit secrets or keys to the repository
- Implement input validation at API boundaries
- Use HTTPS for all external requests
- No secrets or API keys in frontend code
- Prevent XSS vulnerabilities
- Sanitize all user inputs
- Implement Content Security Policy

## Framework integration
- Framework-specific code ONLY in adapters
- Domain logic must be framework-agnostic
- Zero framework dependencies in domain layer
- Use dependency injection for external services
- Create anti-corruption layers for third-party APIs

## Testing standards
- Domain tests: 100% coverage, zero infrastructure dependencies
- Application tests: 95% coverage, mocked ports
- Adapter tests: 80% coverage, integration focused
- Test scenarios must use ubiquitous language
- Business rules tested in domain layer only

## Performance requirements  
- Code splitting by bounded context
- Lazy loading for non-critical components
- Optimize bundle size and loading strategies
- Monitor Core Web Vitals and user experience
- Implement efficient state update patterns

## Contract requirements
- APIs reflect bounded context boundaries
- Endpoints map to use cases, not CRUD
- Request/Response DTOs separate from domain entities
- Use ubiquitous language in API naming
- Provide explicit OpenAPI/GraphQL schemas