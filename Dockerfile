# 1. Use official lightweight Python image
FROM python:3.11-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy requirements file first to leverage Docker cache
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy the rest of the application code
COPY . .

# 6. Expose the port FastAPI runs on
EXPOSE 8000

# 7. Command to run the FastAPI application using Uvicorn
#one dummy committ
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
