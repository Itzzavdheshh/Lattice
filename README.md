# Lattice

A high-performance vector database written from scratch in Go (featuring an HNSW index, Write-Ahead Log (WAL), snapshotting, metadata filtering, and HTTP API) with a Python RAG agent layer on top, deployed to Google Cloud Run.

## Architecture

- **Core Engine (Go)**:
  - Custom vector math & distance primitives (L2, Cosine, Inner Product)
  - Exact Brute-Force baseline index
  - Hierarchical Navigable Small World (HNSW) graph index
  - Persistent WAL & snapshot recovery
  - Concurrency-safe collection management
  - HTTP REST API for querying and vector insertion
- **RAG & Agent Layer (Python)**:
  - Client SDK & ingestion pipeline
  - RAG with citation generation
  - Multi-step agents with session state & tracing
  - Evaluation harness

## Getting Started

### Prerequisites
- Go 1.24+
- Make (optional)

### Build & Run
```bash
make build
go run cmd/lattice-server/main.go
```

### Run Tests & Linter
```bash
make test
make lint
```
