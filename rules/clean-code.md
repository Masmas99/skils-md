# Rule: Clean Code & Maintainable Architecture

Code must be written for human maintainability, readability, and modular growth. Elegance is simplicity, clarity, and discipline.

## Architecture & Code Principles

### 1. SOLID, DRY, and KISS
- **Single Responsibility Principle (SRP)**: Each class, module, or function must have one and only one reason to change.
- **Don't Repeat Yourself (DRY)**: Abstract repeated logic into reusable utility functions, hooks, or service classes.
- **Keep It Simple, Stupid (KISS)**: Choose the simplest viable solution that satisfies requirements. Avoid over-engineering.

### 2. Meaningful Naming & Self-Documenting Code
- Use descriptive, intention-revealing names for variables, functions, and classes (`fetchActiveUserOrders` instead of `getData`).
- Avoid cryptic abbreviations.
- Functions should do one thing well and be concise (ideally under 40 lines of code).

### 3. Strict Separation of Concerns
- Decouple presentation (UI components, Blade views, HTML) from business logic (services, controllers, domain models) and data persistence (repositories, database migrations).
- Do not execute heavy SQL queries or business computations inside template files or UI components.
