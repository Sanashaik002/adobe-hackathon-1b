# 🧠 Adobe Hackathon Round 1B – Persona-Driven PDF Summarizer

## 📌 Challenge Objective

Build an intelligent system that extracts and prioritizes **relevant sections** from a set of PDFs, based on a given **persona** and their **job-to-be-done**.

This solution processes multiple documents, understands their structure, and returns a ranked list of useful sections and summarized content — designed for offline use inside a Docker container.

---

## 🛠️ Tech Stack

- Python 3.10
- PyPDF2 (for PDF parsing)
- Docker (for containerization)

---

## 📂 Folder Structure
adobe-hackathon-round1b/

 ├── Dockerfile

 ├── summarize_persona_docs.py
 
 ├── .gitignore
 
 ├── README.md
 
 ├── input/ # Contains persona.json and PDF files (ignored in Git)
 
 │   ├── persona.json
 
 │   ├── doc1.pdf
 
 │   ├── doc2.pdf
 
 │   └── ...
 
 └── output/ # Output location for output.json (ignored in Git)
 
 └── output.json

## 🐳 Build the Docker Image
 docker build -t round1b-summary .
## ▶️ Run the container
### On windowds cmd
     - docker run --rm -v %cd%\input:/app/input -v %cd%\output:/app/output --network none round1b-summary 
### On Power Shell
     - docker run --rm -v ${PWD}\input:/app/input -v ${PWD}\output:/app/output --network none round1b-summary
### On Git Bash
     - docker run --rm -v $(pwd)/input:/app/input -v $(pwd)/output:/app/output --network none round1b-summary (On git Bash)


## ✨ Features
⛓️ Works offline (no network calls)

💾 Fully CPU-compatible (linux/amd64)

📚 Generalizes to any persona/task/domain

⚡ Executes within 60 seconds for 3–5 PDFs

🧠 Outputs structured, ranked sections + refined summaries

## ❗ Constraints

✅ No GPU / No Internet access

✅ Works on amd64, 8 CPU, 16 GB RAM

✅ Model-free (lightweight, <1GB total)


