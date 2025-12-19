@echo off
python -m venv .venv
call .venv\Scripts\activate
pip install -r requirements.txt
set PYTHONPATH=src
uvicorn offline_workflow_app.web:app --reload
