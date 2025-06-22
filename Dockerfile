# Use official Python image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies (if needed)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy project files
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip \
    && pip install --no-cache-dir .

# Expose port (change if your server uses a different port)
EXPOSE 8000

# Set the default command to run the MCP server
CMD ["python", "-m", "mcp_mlb_statsapi"]
