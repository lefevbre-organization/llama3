# llama3
LLaMa 3  lab


```markdown
# Docker Project: LLaMA 3 and Flask Application

This repository contains Dockerfiles and instructions to run two Docker containers: one for LLaMA 3 and another for a Python application with Flask that consumes the API exposed by LLaMA 3.

## Running the Containers

### Building and Running the LLaMA 3 Container

```bash
# Build and run the LLaMA 3 container
docker build -t ollama-container .
docker run -p 11434:11434 ollama-container
```

### Building and Running the Python and Flask Container to Consume the API

```bash
# Build and run the Python and Flask container
docker build -t flask-app .
docker run -p 5000:5000 flask-app
```

### Consuming the API of LLaMA 3 in the Flask Application

Make sure to set up the requests in your Flask application to consume the API exposed by LLaMA 3. Use the IP address of the LLaMA 3 container and the exposed port (`http://localhost:11434`, for example) in your Python code.

## Repository Structure

- `Dockerfile-ollama`: Dockerfile for the LLaMA 3 container.
- `Dockerfile-flask`: Dockerfile for the Python and Flask container.
- `app.py`: Script containing the Flask application that consumes LLaMA 3 API.
- Other necessary files and directories for your application.


