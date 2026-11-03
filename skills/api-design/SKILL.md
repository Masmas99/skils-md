---
name: api-design
description: >-
  Architect and implement robust, secure, and standardized RESTful and AJAX API endpoints
  with consistent JSON responses, error handling, and status codes.
---

# API Design Skill

## 1. Purpose
Design, construct, and document secure, well-structured, and predictable API endpoints adhering to REST conventions and clean JSON schemas.

## 2. When to Use
- When creating backend endpoints for frontend AJAX, SPA clients, or mobile apps.
- When designing webhook receivers, external integrations, or internal micro-endpoints.
- When refactoring inconsistent API responses or error structures.

## 3. Workflow
1. **Endpoint Modeling**: Define URI paths, HTTP methods (GET, POST, PUT, PATCH, DELETE), and resource nouns (pluralized, e.g., `/api/v1/orders`).
2. **Request Validation**: Implement FormRequest or schema validators to reject invalid payloads early.
3. **Response Standardization**:
   - Success format:
     ```json
     {
       "success": true,
       "data": { ... },
       "meta": { ... }
     }
     ```
   - Error format:
     ```json
     {
       "success": false,
       "message": "Human-readable error message",
       "errors": { "field": ["Detailed validation note"] }
     }
     ```
4. **HTTP Status Code Discipline**:
   - `200 OK` (Standard success)
   - `201 Created` (Resource created)
   - `400 Bad Request` (Malformed request syntax)
   - `401 Unauthorized` (Authentication missing or invalid)
   - `403 Forbidden` (Authenticated but lacking permission)
   - `404 Not Found` (Resource does not exist)
   - `422 Unprocessable Entity` (Validation failure)
   - `500 Internal Server Error` (Unexpected server-side exception)
5. **Security & Rate Limiting**: Apply authentication middleware and throttle limits.

## 4. Implementation Guidelines
- Version all public APIs using URI prefixes (e.g., `/api/v1/`).
- Use resource transformers or API resources (e.g., Laravel JsonResource) to decouple database columns from external responses.
- Implement cursor-based or offset-based pagination for collection endpoints.

## 5. Restrictions
- Never return HTTP 200 with an error object inside (e.g., `{"status": 200, "error": "failed"}`). Use proper 4xx/5xx codes.
- Never expose sensitive database fields (passwords, salts, reset tokens) in API responses.
- Never accept unvalidated request payloads.

## 6. Testing Checklist
- [ ] Endpoints respond with correct HTTP status codes.
- [ ] JSON response formats adhere to standardized success and error schemas.
- [ ] Validation errors return 422 with field-specific messages.
- [ ] Authentication and rate limiting properly enforced.

## 7. Completion Criteria
- Fully tested, secure, and predictable API endpoints conforming to REST standards.
