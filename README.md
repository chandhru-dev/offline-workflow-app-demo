# Offline Workflow App Demo (Public-Safe)

A small **offline-first** web application that runs on **localhost** and demonstrates:
- Python backend (FastAPI)
- Simple frontend (HTML templates)
- Local persistence (SQLite)
- Workflow-driven screens (cases + steps)
- An **AI-assisted development** approach with human verification

> **Disclaimer:** This is a **demo/template** inspired by real-world workflow software.
> It does **not** include client code, confidential logic, or patient data.

---

## Why this repo exists
Recruiters often want to see **real code**.  
My professional work involves an offline full‑stack application in the **robotic knee replacement surgery workflow** domain (confidential).  
So this repo provides a **public-safe** example of the same software engineering patterns: offline-first, workflow screens, reliability checks, clean modular Python.

---

## Features
- Create a “Case”
- Track case status across steps (Setup → Plan → Execute → Review)
- Persist locally in SQLite (no internet required)
- Export a simple text report for a case

---

## Tech
- **Backend:** FastAPI
- **Frontend:** Jinja2 templates (server-rendered HTML)
- **Storage:** SQLite
- **Quality:** pytest + ruff (lint)

---

## Run locally (Windows / Linux / macOS)
```bash
# 1) Create venv
python -m venv .venv

# 2) Activate
# Windows:
.venv\Scripts\activate
# macOS/Linux:
source .venv/bin/activate

# 3) Install deps
pip install -r requirements.txt

# 4) Start the app
uvicorn offline_workflow_app.web:app --reload

# 5) Open in browser
# http://127.0.0.1:8000
```

The SQLite DB is created in `./data/app.db` automatically.

---

## Architecture (high level)

```mermaid
flowchart LR
  UI[Browser UI (HTML)] --> API[FastAPI Routes]
  API --> SVC[Service Layer]
  SVC --> DB[(SQLite)]
  SVC --> REP[Report Export]
```

---

## AI-assisted development (how I use AI professionally)
I use AI tools to speed up:
- scaffolding boilerplate (routes/templates)
- debugging stack traces
- refactoring suggestions
- test case ideas

But the final delivery is **human verified**:
- review the code for correctness
- run tests
- validate edge cases (bad input, missing fields, etc.)

See: `docs/AI_ASSISTED_DEV.md`

---

## Screenshots / video
Add anonymized UI screenshots in `docs/media/` and link them here.

---

## License
MIT — see `LICENSE`
