
FROM python:3.11-slim

LABEL maintainer="karchernic@gmail.com"
LABEL version="0.0.1"
LABEL description="2fast2q"


# Install system dependencies if needed (e.g. for numpy/pandas); tweak as required
#RUN apt-get update && apt-get install -y --no-install-recommends \
#    build-essential \
#    && rm -rf /var/lib/apt/lists/*

# Install the fast2q package from PyPI
RUN pip install --no-cache-dir fast2q

# Create a working directory for input FASTQ files
#WORKDIR /data

# By default, run the fast2q module (this starts the program)
#ENTRYPOINT ["python", "-m", "fast2q"]
# Or, if the package exposes a console_script entry point, you can use:
# ENTRYPOINT ["fast2q"]
 