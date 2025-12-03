#!/bin/bash

# Create the main backend directory
mkdir -p backend/core
mkdir -p backend/api

# Create the Python files inside 'core' and 'api'
touch backend/core/document.py
touch backend/core/rag_session.py
touch backend/core/retriever.py

touch backend/api/ingest.py
touch backend/api/query.py
touch backend/api/edit.py
touch backend/api/compare.py
touch backend/api/merge.py

# Create the 'models.py' and 'app.py' files
touch backend/models.py
touch backend/app.py

echo "Directory structure and files have been created."

