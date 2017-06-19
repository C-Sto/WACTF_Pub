# This line defines your base docker image.
FROM python:2

# This sets the working directory
WORKDIR /usr/src/app

# This will move your requirements file onto the container
COPY requirements.txt ./

# Install your requirements
RUN pip install --no-cache-dir -r requirements.txt

# Copy your application
COPY app.py ./

# Run your application
CMD ["python", "./app.py"]
