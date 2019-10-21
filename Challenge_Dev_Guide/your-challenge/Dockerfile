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

# Create non-root user
RUN adduser --system --shell /bin/false --no-create-home --group --disabled-login --disabled-password python-app

# Running as non-root user, add read privileges to the app
RUN chown root:python-app ./ -R
RUN chmod 640 ./*

# Switch to the container non-root user, anything you need to run as root, do before this
USER python-app

# Run your application
CMD ["python", "./app.py"]