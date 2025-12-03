## 📁 Project Structure for DoAnythingPDF

```text
backend/
├── core/
│   ├── document.py           # Represents one loaded PDF with chunks + metadata
│   ├── rag_session.py        # Holds 1 or 2 documents + hybrid retriever (in-memory)
│   └── retriever.py          # Very lightweight hybrid + optional reranker
├── api/
│   ├── ingest.py             # POST /documents → returns doc_id
│   ├── query.py              # GET /query (with session_id or doc_ids + filters)
│   ├── edit.py               # POST /chunks/{chunk_id} (replace text, re-embed instantly)
│   ├── compare.py            # GET /compare?doc1_id=…&doc2_id=…
│   └── merge.py              # POST /merge (select chunks → new document)
├── models.py                 # Pydantic models
└── app.py                    # FastAPI entrypoint
```