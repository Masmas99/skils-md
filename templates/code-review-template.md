# Code Review & Architecture Quality Checklist

Use this review template before merging or delivering any code module to ensure complete adherence to Clean Code, Performance, and Security principles.

## 1. Architecture & Design Review
- [ ] **Single Responsibility**: Each class, controller, and component has a focused, single responsibility.
- [ ] **Separation of Concerns**: Presentation logic, business services, and database queries are properly decoupled.
- [ ] **DRY Principle**: No duplicate code blocks or redundant utility implementations.
- [ ] **Existing Stack First**: Code strictly utilizes existing packages and patterns without introducing unnecessary third-party libraries.

## 2. Code Quality & Readability
- [ ] **Naming Conventions**: Variables, methods, and classes have self-explanatory, domain-aligned names.
- [ ] **Function Length**: Functions are concise (ideally <= 40 lines) and avoid deep nesting (max 3 levels).
- [ ] **Type Safety & Documentation**: Type hints, return types, and docblocks are properly specified.
- [ ] **No Dead Code**: Unused imports, commented-out code, and debug statements (`console.log`, `dd()`, `dump()`) removed.

## 3. Responsive UI/UX Quality
- [ ] **Viewport Compliance**: Layout checked across 320px, 375px, 430px, 768px, 1024px, 1440px, and 1920px.
- [ ] **Zero Horizontal Overflow**: Page body and containers stay within viewport bounds.
- [ ] **Touch Targets**: All interactive elements are at least 44x44px on touch viewports.
- [ ] **Minimalist UI**: Clean typography, consistent spacing, and functional icons only.

## 4. Performance & Security
- [ ] **Database Queries**: Eager loading applied; no N+1 query patterns.
- [ ] **Input Sanitization**: User input validated on server; outputs escaped against XSS.
- [ ] **CSRF Protection**: Tokens enforced on all state-modifying requests.

## 5. Review Decision
- **Reviewer**: _______________________
- **Result**: [APPROVED / REQUEST CHANGES]
- **Feedback & Action Items**: __________________________________________________
