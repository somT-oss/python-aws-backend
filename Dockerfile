# Use the Python 3.9 Alpine base image
FROM python:3.9

RUN apt-get update
RUN apt-get instal libpq-dev -y && apt-get install libpq5 -y

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt