---
title: Scaffold should gitignore Hugo public/ directory
status: open
created: 2026-03-13
---

When scaffolding a new course, the generated `.gitignore` should include `public/` (Hugo's build output directory). Currently `public/` ends up tracked in git, bloating the repo with regenerable artifacts.
