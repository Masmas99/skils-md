---
name: database-architect
description: >-
  Model, design, and optimize database schemas, relational foreign keys, migrations,
  indexing strategies, and seeders for high data integrity and performance.
---

# Database Architect Skill

## 1. Purpose
Design clean, normalized, and performant relational database schemas, migrations, indexes, and seeders that prevent data corruption and support scalable application growth.

## 2. When to Use
- When planning the data layer for a new application or feature.
- When creating or modifying database migrations and table relationships.
- When optimizing slow queries or resolving data modeling bottlenecks.

## 3. Workflow
1. **Entity-Relationship Modeling**: Identify core entities, attributes, primary keys, and relationships (1-to-1, 1-to-N, N-to-N).
2. **Schema Normalization**: Apply Third Normal Form (3NF) to eliminate redundancy, reserving selective denormalization for specific performance bottlenecks.
3. **Migration Authoring**:
   - Write reversible migrations (`up()` and `down()` methods).
   - Use strict column data types (e.g., `unsignedBigInteger`, `boolean`, `decimal(10,2)` for currency; avoid floats for money).
   - Define foreign key constraints with explicit `onDelete` behaviors (`cascade`, `restrict`, `nullOnDelete`).
4. **Indexing Strategy**: Add indexes to foreign keys, search columns, and compound index criteria.
5. **Seeder & Factory Creation**: Provide realistic dummy data factories for testing.

## 4. Implementation Guidelines
- Always use `timestamps()` (`created_at`, `updated_at`) for auditability.
- Use soft deletes (`deleted_at`) when data retention or undo functionality is required.
- Never store monetary values in floating-point columns; use integer cents or `decimal(12,2)`.

## 5. Restrictions
- Never alter production tables with destructive migrations without explicit data migration scripts.
- Never omit foreign key constraints when modeling relational data.
- Never store plaintext passwords or unencrypted sensitive personal data.

## 6. Testing Checklist
- [ ] Migrations run cleanly from scratch (`migrate:fresh`).
- [ ] Rollbacks (`migrate:rollback`) execute without errors.
- [ ] Foreign keys and cascading rules properly tested.
- [ ] Database seeders successfully populate realistic test data.

## 7. Completion Criteria
- Normalized, performant database schema implemented with tested migrations and seeders.
