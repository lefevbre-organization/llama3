# llama3
LLaMa 3  lab

## Dockerfile Summary

The following `Dockerfile` is tailored to create a Docker image that amalgamates a Flask application with Ollama functionalities. Noteworthy, the Ollama model is executed locally. Key insights from the Dockerfile include:

- **Setup**: Utilizes "ollama/ollama" as the base image and installs essential dependencies.
- **Application Integration**: Incorporates Flask settings and connects with Ollama and LLaMA 3 functions.
- **Port Configuration**: Exposes the Flask application on port 5000 and LLaMA 3 on port 11434.
- **Execution Command**: Activates Ollama and LLaMA 3 processes before launching the Flask application within the container.

### Usage Instructions

1. **Building the Image**:
   - Build the Docker image using `docker build -t image_name .` in the Dockerfile directory.
   
2. **Running the Container**:
   - Start the container with `docker run -p 5000:5000 -p 11434:11434 image_name`, ensuring the Ollama model's local execution.

---

## Flask Application Summary

The provided `app.py` script houses a Flask application that interfaces with the locally hosted Ollama chatbot model. Highlighted features of the Flask application:

### Features
- **Interpretation Endpoint**: Processes POST requests to `/interpret` for user input interpretation.
- **Ollama Integration**: Communicates with the Ollama model (locally executed) to generate responses.
- **Error Handling**: Manages exceptions to provide concise error responses.

### Endpoints
- **POST `/interpret` Endpoint**:
  - Expects JSON input with a user-provided `input`.
  - Delivers a JSON response with the interpreted output from the locally hosted Ollama model.

### Execution
- Execute the Flask application locally by running `python app.py`.

