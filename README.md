# Offline Workflow App Demo (Public-Safe)

An **offline-first, localhost-based full-stack web application** built with **Python**, created to demonstrate
**real-world software engineering practices** such as workflow design, reliability, clean architecture,
and **AI-assisted development with human ownership**.

> ⚠️ **Disclaimer**  
> This repository is a **public-safe demo/template** inspired by real-world workflow software.  
> It contains **no client code, no proprietary logic, and no patient or medical data**.

---

## Why this repository exists

Recruiters and interviewers often want to review **actual, runnable code**, not just resumes.

My professional work involves building an **offline full-stack application** in the  
**robotic knee replacement surgery workflow domain**. That production system is confidential.

This repository therefore provides a **public-safe representation** of the same **engineering patterns** I use professionally:
- offline-first application design  
- workflow-driven user interfaces  
- reliability through validation and local persistence  
- clean, modular Python architecture  

---

## Key Features

- Create and manage a **Case**
- Track case progress across defined workflow steps  
  *(Setup → Plan → Execute → Review)*
- Fully **offline operation** using local SQLite storage
- Simple **report export** for a case
- Clean separation of UI, business logic, and storage
- AI-assisted development with **human verification**

---

## Technology Stack

- **Backend:** FastAPI (Python)
- **Frontend:** Jinja2 templates (server-rendered HTML)
- **Storage:** SQLite (local persistence)
- **Quality & Tooling:** pytest, ruff (linting), GitHub Actions CI

---

## Run Locally (Windows / Linux / macOS)

```bash
# 1) Create virtual environment
python -m venv .venv

# 2) Activate environment
# Windows:
.venv\Scripts\activate
# macOS / Linux:
source .venv/bin/activate

# 3) Install dependencies
pip install -r requirements.txt

# 4) Start the application
uvicorn offline_workflow_app.web:app --reload

# 5) Open in browser
# http://127.0.0.1:8000
