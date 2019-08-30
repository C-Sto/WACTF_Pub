This is the directory where your challenge is expected to sit, it should contain all your source code, provisioning and cleanup scripts and your Dockerfile.

In the example Dockerfile in this directory, we will:

- Define the base image (the base 'vm' that your application lives in)
- Define the working directory
- Copy required files over
- Run setup commands
- Specify the user running the container
- Set any permissions (e.g. read access to a web app) for the user running the container
- Bring up the CTF challenge

*You don't need to use the EXPOSE command in your Dockerfile - we will do that in docker-compose*
