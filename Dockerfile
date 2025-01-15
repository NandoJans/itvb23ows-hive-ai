# flask_api/Dockerfile

# Start from an official Python image
FROM python:3.9

# Create an application directory
WORKDIR /app

# Copy requirements first for caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your Flask app
COPY . /app

# Expose port 5000
EXPOSE 5000

# Define the default command to run the Flask app
CMD [ "python", "app.py" ]
