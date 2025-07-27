FROM python:3.10-slim

WORKDIR /app

COPY summarize_persona_docs.py /app

RUN pip install PyPDF2

CMD ["python", "summarize_persona_docs.py"]
