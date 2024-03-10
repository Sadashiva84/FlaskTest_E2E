# Use official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run test_app.py to ensure tests pass
RUN python test_app.py

# Command to run the app.py when the container launches
CMD ["python", "app.py"]
