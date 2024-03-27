# Use an official Python runtime as a parent image
FROM python:3.11-alpine

# Set environment variables
ENV WORKSPACE_DIR=/usr/src/app

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN python3 -m pip install -r requirements.txt

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV UVICORN_PORT=3000

# Run app.py when the container launches
CMD ["uvicorn", "opendevin.server.listen:app", "--port", "3000"]
