# Use the official Python image as a parent image
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY app.py .

# Copy the dataset files into the container (optional, if not too large)
COPY dataset.csv .

# Expose port 8501 for the Streamlit app to listen on
EXPOSE 8501

# Run the Streamlit application
CMD ["streamlit", "run", "app.py"]

