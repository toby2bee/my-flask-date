FROM python:3-alpine

# Install Flask
RUN pip install flask

# Set working directory
WORKDIR /app

# Copy the Python script into the container
COPY date.py /app/

# Expose port 8080 for the Flask app
EXPOSE 8080

# Run the Flask app when the container starts
CMD ["python3", "date.py"]
