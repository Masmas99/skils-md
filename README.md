# ⚡ MASMAS DEVELOPMENT SYSTEM

> **A High-Autonomy, Quality-Driven Engineering Framework for AI Agents & Modern Web Developers**  
> Built for **Google Antigravity**, LLM Coding Agents, and Full-Stack Engineers.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform: Google Antigravity](https://img.shields.io/badge/Platform-Google%20Antigravity-orange.svg)](https://antigravity.google)
[![Viewports: 7 Mandatory](https://img.shields.io/badge/Viewports-320px%20to%201920px-brightgreen.svg)](#3-responsive-design--highest-priority)
[![Design: Zero Residue](https://img.shields.io/badge/Workspace-Zero%20Residue-purple.svg)](#2-the-core-principles)

---

## 🚀 Quick Install (For Anyone Using Antigravity)

Anyone can install the entire **Masmas Development System** into their local Antigravity environment with a single command:

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/USERNAME/REPO/main/install.ps1 | iex
```
*(Ganti `USERNAME/REPO` dengan username dan nama repository GitHub milikmu)*

Atau clone dan jalankan lokal:
```powershell
git clone https://github.com/USERNAME/REPO.git masmas-skills
cd masmas-skills
.\install.ps1
```

### macOS / Linux (Bash)
```bash
git clone https://github.com/USERNAME/REPO.git masmas-skills
cd masmas-skills
chmod +x install.sh && ./install.sh
```

Begitu terpasang, kamu bisa langsung memanggil perintah di chat Antigravity:
```text
/skilsmashudi
```

---

## 🌟 Fitur Utama & Keunggulan

1. **Mandat Responsif 7 Viewport (Prioritas Tertinggi)**:
   * Menjamin tata letak web adaptif tanpa *horizontal overflow* di seluruh layar:
   * `320px` (Small Mobile / iPhone SE)
   * `375px` (Standard Mobile)
   * `430px` (Large Mobile / Pro Max)
   * `768px` (Tablet Portrait)
   * `1024px` (Laptop Baseline)
   * `1440px` (Desktop Standard)
   * `1920px+` (Ultrawide Displays)

2. **Hanya Ikon yang Benar-Benar Fungsional (Anti-Ikon Hiasan)**:
   * Menghilangkan ikon sampah dekoratif pada kartu dan teks biasa.
   * Ikon hanya dipakai jika bernilai fungsional tinggi (misal: input search, close `X`, metrik dashboard).

3. **Disiplin Warna (Anti-Pelangi)**:
   * AI dilarang keras membuat warna acak-acakan. Wajib meminta konfirmasi warna utama brand dan mengunci palet pada **1 warna brand + warna netral**.

4. **Isolasi Dashboard Admin & Sidebar Kiri**:
   * Tombol admin **tidak pernah dimunculkan** di navbar landing page publik.
   * Dashboard admin privat memiliki sidebar yang tertata rapi di sebelah **KIRI**.

5. **Pembersihan File Uji Coba (Zero Workspace Residue)**:
   * Begitu pengetesan selesai, seluruh file sementara (`TEST_REPORT.md`, `RESPONSIVE_CHECKLIST.md`, `CHANGELOG.md`) otomatis dihapus. Folder proyek tetap bersih.

6. **Tanpa PRD Otomatis (*Agile Execution*)**:
   * AI langsung mengeksekusi arsitektur dan kode tanpa memperlambat proyek dengan membuat file PRD unrequested.

---

## 📂 Struktur Direktori

```text
masmas-development-system/
├── README.md                           # Dokumentasi & panduan publik
├── AGENTS.md                           # Master behavioral instructions for AI agents
├── install.ps1                         # Installer otomatis Windows
├── install.sh                          # Installer otomatis macOS/Linux
├── LICENSE                             # Lisensi open-source MIT
├── .gitignore                          # Aturan ignore file sementara
│
├── rules/                              # 9 Modular Operational Rules
│   ├── responsive-design.md            # [HIGHEST PRIORITY] 7-viewport constraints
│   ├── autonomous-workflow.md          # Direct agile execution (No PRD overhead)
│   ├── existing-stack-first.md         # Stack detection & dependency discipline
│   ├── ui-ux-minimalism.md             # Clean aesthetics, anti-rainbow, essential icons
│   ├── change-transparency.md          # Clean in-chat reporting
│   ├── mandatory-testing.md            # Zero residue test cleanup
│   ├── security-first.md               # OWASP Top 10, sanitization, CSRF safety
│   ├── performance-first.md            # Core Web Vitals (LCP, CLS, INP)
│   └── clean-code.md                   # SOLID, DRY, KISS, modular architecture
│
├── skills/                             # 16 Progressive Operational Skills
│   ├── skilsmashudi/SKILL.md           # [MASTER COMMAND] Triggered via /skilsmashudi
│   ├── landingpage-dashboard/SKILL.md  # Animated landing page + private left-sidebar dashboard
│   ├── responsive-design/SKILL.md      # Multi-device responsive design implementation
│   ├── prd-generator/SKILL.md          # On-demand PRD drafting
│   ├── stack-detector/SKILL.md         # Environment & dependency stack analyzer
│   ├── ui-ux-design-system/SKILL.md    # Design token & functional icon selector
│   ├── clean-code-refactor/SKILL.md    # Code smell elimination & SOLID refactor
│   ├── security-audit/SKILL.md         # Vulnerability scanning & OWASP audit
│   ├── performance-optimizer/SKILL.md  # Core Web Vitals & asset tuning
│   ├── autonomous-builder/SKILL.md     # Full application builder workflow
│   ├── automated-testing/SKILL.md      # Unit, integration, & UI test runner
│   ├── transparency-reporter/SKILL.md  # In-chat change documentation
│   ├── api-design/SKILL.md             # RESTful API architecture & error schemas
│   ├── database-architect/SKILL.md     # Relational modeling & migrations
│   ├── accessibility-audit/SKILL.md    # WCAG 2.1 AA & keyboard navigation
│   └── deployment-readiness/SKILL.md   # Pre-release verification gates
│
└── templates/                          # 7 Standard Documentation Templates
    ├── prd-template.md                 # Product Requirements Document
    ├── architecture-template.md        # Technical System Architecture
    ├── responsive-checklist-template.md# 7-Viewport Responsive Matrix
    ├── test-plan-template.md           # Test Plan & Verification Report
    ├── security-audit-template.md      # OWASP Security Assessment
    ├── change-log-template.md          # Modification Record & Version History
    └── code-review-template.md         # Code Quality Review Checklist
```

---

## 💻 Cara Menggunakan di Chat

Setelah diinstal, panggil perintah:

```text
/skilsmashudi bangun landing page kursus online dengan tema dark mode
```

AI agent akan otomatis:
1. Memeriksa framework & tools yang ada di proyekmu.
2. Meminta konfirmasi warna utama brand pilihanmu.
3. Membangun halaman responsif di 7 viewport tanpa scroll horizontal.
4. Menerapkan animasi modern tanpa membuat browser lag.
5. Menghapus otomatis semua file uji coba sementara.

---

## 📄 Lisensi

Didistribusikan di bawah Lisensi [MIT](LICENSE). Bebas digunakan, dimodifikasi, dan dibagikan oleh siapa saja.
"# skils-md" 
