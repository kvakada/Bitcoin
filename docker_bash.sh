
#!/bin/bash
# Open an interactive bash shell inside the Docker container
docker run -it --rm -v $(pwd):/app bitcoin-project /bin/bash
