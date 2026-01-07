# Use slim for smaller image size
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy requirements first (better layer caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY app.py .

# Expose port
EXPOSE 5000

# # Alternative for development: 
CMD ["python", "app.py"]