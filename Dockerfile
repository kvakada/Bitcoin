
# Dockerfile for Bitcoin Time Series Analysis Project

FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install system dependencies
RUN apt-get update && apt-get install -y     git     build-essential     && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --upgrade pip && pip install \
    pandas \
    numpy \
    matplotlib \
    s3fs \
    statsmodels \
    scipy \
    jupyter

# Expose Jupyter port
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root", "--no-browser"]
