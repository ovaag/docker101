# Use an official base image
FROM ubuntu:latest
# FROM ros:melodic-ros-base

# Set environment variables to non-interactive (this prevents some prompts)
ENV DEBIAN_FRONTEND=non-interactive

# Run package updates and install packages
RUN apt-get update \
    && apt-get install -y python3 python3-pip

# Copy the Python script into the image
COPY my_script.py .

# Run the Python script when the container starts
CMD ["python3", "my_script.py"]
