# Use an official base image
FROM ubuntu:20.04

# Set environment variables to non-interactive (this prevents some prompts)
ENV DEBIAN_FRONTEND=non-interactive

# Run package updates and install packages
RUN apt-get update \
    && apt-get install -y python3 python3-pip firefox

RUN pip3 install numpy
# Copy the Python script into the image
COPY my_script.py .

# Run the Python script when the container starts
CMD ["python3", "my_script.py"]
