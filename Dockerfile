
FROM python:3.9-alpine

# Install build dependencies
RUN apk update && apk add --no-cache build-base gcc musl-dev

# Set working directory
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt /app/requirements.txt

# Install Python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the rest of the application into the container
COPY . /app


