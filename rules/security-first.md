# Rule: Security First

Security is baked into every layer of development from architecture to deployment. Vulnerabilities must be actively prevented, never patched as an afterthought.

## Security Directives

### 1. Input Sanitization & Validation
- Validate all user inputs on both client and server side. Never trust client-side data.
- Enforce strict typing, length limits, allowed character sets, and payload boundaries.
- Sanitize output strings to prevent Cross-Site Scripting (XSS). Use framework-native escaping (Blade `{{ }}`, React JSX, modern template engines).

### 2. SQL Injection Prevention
- Strictly use Prepared Statements and parameterized queries or trusted ORMs (Eloquent, Prisma, TypeORM).
- Raw SQL concatenation with user input is categorically banned.

### 3. CSRF & Authentication Security
- Enforce Cross-Site Request Forgery (CSRF) tokens on all state-changing HTTP requests (POST, PUT, DELETE, PATCH).
- Passwords must be hashed using strong algorithms (bcrypt, Argon2). Never store plaintext credentials.
- Store sensitive tokens, API keys, and database credentials exclusively in environment variables (`.env`). Never commit secrets to version control.

### 4. Authorization & Access Control
- Validate user permissions and role-based access control (RBAC) on every protected endpoint and view. Never rely on frontend UI hiding alone.
