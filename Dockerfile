# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies
RUN pip install --no-cache-dir -r  requirement.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define the environment variable to avoid issues with buffer
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "app.py"]

