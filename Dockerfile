# Use an official Python image as the base:
FROM python:3.8-slim
# Set the working directory in the container:
WORKDIR /app
# Copy the application code into the container:
COPY . /app
# Install dependencies:
RUN pip install --no-cache-dir -r requirements.txt
# Expose the port used by the Flask app:
EXPOSE 5000
# Add a health check or test step to validate routes:
RUN python -c "from app import app; print('Available Routes:', app.url_map)"
# Run the application:
CMD ["python", "app.py"]
