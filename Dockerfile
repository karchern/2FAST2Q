FROM python:3.11-slim

LABEL maintainer="Afonso Bravo"
LABEL version="0.0.1"
LABEL description="2fast2q"

RUN pip install --no-cache-dir fast2q

# Default to a shell for “command line access”
WORKDIR /data
ENTRYPOINT ["/bin/bash"]
CMD []