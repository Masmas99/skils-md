# Rule: Clean UI/UX, Strictly Essential Icons & Strict Color Discipline

User interfaces built under the Masmas Development System must reflect refined minimalism, clarity, purpose-driven typography, disciplined color palettes, and strictly essential icon usage.

## UI/UX Principles

### 1. Purposeful Minimalism & Clean Design
- Every UI element must serve a distinct functional purpose. Eliminate decorative clutter, redundant borders, aggressive drop shadows, and unnecessary gradient meshes.
- Generous white space (negative space) is preferred over visual filler.

### 2. Strictly Essential Icons Only (NO Decorative Icons)
- **Zero Decorative Icons**: Strictly forbidden from scattering decorative icons across cards, section headers, features, or standard text. If an element does not strictly need an icon, do NOT use one.
- **When Icons ARE Permitted**:
  - Complex Dashboards: Compact metric cards, navigation drawers, or data charts where icons directly accelerate identification.
  - Action Controls: Search magnifying glass, modal close ('X'), dropdown chevrons, or table row actions (edit/delete).
- Maintain consistent icon stroke width (e.g., 1.5px or 2px) and optical sizing (16px to 20px).

### 3. Strict Color Discipline & Mandatory Color Consultation
- **NO Rainbow / Multi-Color Clutter**: Strictly forbidden from generating arbitrary multi-colored, rainbow, or circus-like interfaces. The UI must NEVER use random, conflicting, or overly colorful palettes across sections.
- **Mandatory User Color Consultation**: The agent MUST explicitly ask the user what primary color/theme they want (e.g., Primary Brand Color, Light vs Dark mode) BEFORE styling or finalizing the UI. Never assume or improvise arbitrary vibrant colors without user confirmation.
- **Controlled Palette Architecture**:
  - Exactly **1 Primary Brand Color** (chosen or confirmed by the user).
  - **1 Neutral Grayscale Palette** (slate, zinc, or neutral gray for backgrounds, borders, and text).
  - Standard **Semantic Status Colors** used strictly for real notifications/alerts (Success Green, Danger Red, Warning Amber), never as decorative page accents.

### 4. Banned Design Anti-Patterns (STRICTLY PROHIBITED)
- **NO Generic Hero Pill / Availability Badges**:
  - Strictly forbidden from generating floating oval/pill status badges at the top of hero sections (e.g., *"Tersedia untuk Proyek Baru & Konsultasi"*, *"Available for work"*, *"Open to new projects"*, or similar freelance/consulting availability badges with green dots).
- **NO Fake / Decorative Status Indicators**:
  - Green/amber/red status dots (or pulsing/pinging radar dots) are reserved exclusively for real functional data in dashboards. Never use them as decorative ornaments in hero banners or headers.
- **Content-First Hero Sections**:
  - Hero sections must begin immediately with a bold, authentic Value Proposition (H1), a concise explanatory subheadline, and clear primary actionable CTA buttons.
### 5. Private Admin Access & Left-Sidebar Ergonomics
- **NO Public Admin Links**: When building a landing page with an admin panel, NEVER display a "Dashboard Admin", "Admin", or login button in the public header or footer navigation bar. Admin access must remain private and isolated (accessible only via direct URL such as `admin.html`).
- **Left-Sidebar Dashboard Standard**: Admin dashboards must always anchor the navigation sidebar on the **left side** of the screen (collapsible into a left drawer on mobile).

### 6. Interactive Animations & Lightweight Asset Standards
- **Subtle, High-Impact Animations**: Landing pages must feature smooth, interactive animations (e.g., staggered scroll-fade reveals, smooth navbar glassmorphism on scroll, clean hover states) implemented using hardware-accelerated CSS (`transform`, `opacity`) for 60fps fluidity.
- **Lightweight Asset Optimization**: All images must be compressed (preferably WebP) and sized appropriately. Never use heavy, unoptimized image assets that cause slow page loads.
- **Handover Instructions**: Upon completion, the agent MUST explicitly instruct the user on the exact admin URL and how to replace/customize assets and content.
