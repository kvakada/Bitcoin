
#!/bin/bash
# Run Jupyter Notebook inside Docker container
docker run -it --rm -p 8888:8888 -v $(pwd):/app bitcoin-project
