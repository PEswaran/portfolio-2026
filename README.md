# Project Showcase App

A Flutter portfolio application for Parveen Eswaran — a cross-platform mobile app that serves as an interactive resume and project showcase.

## Overview

This app presents a professional landing page with career details (summary, skills, experience, education, certifications, contact) and a dedicated projects screen highlighting key engineering work spanning SaaS platforms, AI-powered EdTech, microservices architecture, embedded systems, and data analytics.

## Featured Projects

| Project                     | Description                                                              |
| --------------------------- | ------------------------------------------------------------------------ |
| **TetherTasks**             | Multi-tenant task management SaaS platform built on AWS                  |
| **LessonPath Pro**          | AI-powered differentiated learning platform for EdTech                   |
| **Microservices Migration** | Monolith-to-microservices transition at ZoomInfo                         |
| **SRE Lookup Tool**         | Internal platform plugin reducing SRE response time                      |
| **Kiosk Application**       | Embedded device UI for scientific instruments at Waters Technologies     |
| **Data Discovery Tool**     | Proprietary collaboration & analytics platform at MIT Lincoln Laboratory |

## Tech Stack

- **Framework:** Flutter (Dart), Material 3
- **State:** Stateless widget architecture
- **Navigation:** Navigator push/pop
- **External Links:** url_launcher
- **Design System:** Custom `AppColors` theme with warm, muted palette
- **Assets:** Project logos (PNG), resume (PDF)

## Project Structure

```
lib/
├── main.dart                      # App entry point and MaterialApp config
├── theme.dart                     # AppColors and ThemeData definition
├── models/
│   └── project.dart               # Project model and portfolio data
├── screens/
│   ├── landing_screen.dart        # Landing page (hero, about, skills, experience, etc.)
│   ├── projects_screen.dart       # Scrollable project list with cards
│   └── project_detail_screen.dart # Individual project detail view
└── assets/
    ├── tethertasks_logo.png       # TetherTasks logo
    ├── lessonpathpro_logo.png     # LessonPath Pro logo
    └── Peswaran-2026.pdf          # Resume
```

## Screens

### Landing Page

Professional portfolio landing page with sections for:

- Hero header with name, title, and CTA button
- About (professional summary)
- Skills (Cloud/AWS, Azure, Frontend, Languages, DevOps, Tools)
- Experience (TetherTasks, ZoomInfo, Waters Technologies, MIT Lincoln Lab, SBIA)
- Education (Worcester State University, BS Computer Science)
- Certifications (AWS, Azure AI, PMI-ACP, PMI-CAPM)
- Contact information

### Projects Screen

Scrollable list of project cards, each with a color-coded gradient header, project logo (when available), description preview, and tech stack tags. Tapping a card navigates to the detail view.

### Project Detail Screen

Full project breakdown with overview, key highlights, tech stack, and external website link (where applicable).

## License

Proprietary. All rights reserved.
