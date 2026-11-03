---
name: mock-data-generator
description: >-
  Generate realistic, high-fidelity mock data and imagery. Ban generic 'Lorem Ipsum'
  and meaningless placeholder data in prototypes, landing pages, and web applications.
---

# Mock Data Generator Skill (Anti-Lorem Ipsum)

## 1. Purpose
Eliminate generic, artificial placeholder text ("Lorem Ipsum", "Product 1", "Rp 10.000") by automatically generating authentic, high-quality domain-specific copy, realistic Indonesian/global names, accurate Rupiah pricing, and curated Unsplash imagery.

## 2. When to Use
- When scaffolding any landing page, product catalog, e-commerce store, or dashboard.
- Whenever populating mock database tables, JavaScript objects, or sample customer reviews.
- When turning a bare wireframe into an impressive, realistic prototype.

## 3. Workflow
1. **Identify Domain & Persona**:
   - Detect what the product is (e.g., home decor, electric fans, rental agency).
2. **Source High-Quality Unsplash Images**:
   - Use curated, high-resolution Unsplash URLs with specific query keywords and optimization parameters (e.g., `https://images.unsplash.com/photo-...?auto=format&fit=crop&w=600&q=80`).
3. **Generate Domain-Specific Copywriting**:
   - Write genuine, compelling product names, real technical specs (wattage, material, dimensions), and realistic prices.
4. **Inject Authentic Indonesian/Contextual Data**:
   - Use natural customer names, realistic city addresses, and standard phone numbers.
5. **Structure as Reusable JSON/Objects**:
   - Organize data into clear, cleanly structured JavaScript arrays or seeders.

## 4. Implementation Guidelines
- Format all prices with proper thousand separators (e.g., `Rp 285.000` via `new Intl.NumberFormat('id-ID')`).
- Provide varied stock numbers, ratings (e.g., 4.8 / 5.0), and realistic review dates.

## 5. Restrictions
- STRICTLY FORBIDDEN from using "Lorem Ipsum" or Latin dummy text.
- STRICTLY FORBIDDEN from using gray boxes or generic placeholder images like `via.placeholder.com`.
- Do not repeat the same product image across multiple items.

## 6. Testing Checklist
- [ ] Zero "Lorem Ipsum" text present in the application.
- [ ] All images load cleanly from reliable high-res URLs.
- [ ] Product titles, descriptions, and prices are realistic and compelling.

## 7. Completion Criteria
- Prototype looks like a real, live, operating business with rich, believable content.
