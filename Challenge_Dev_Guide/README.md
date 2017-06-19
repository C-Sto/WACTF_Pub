# Hello CTF Builder!

_Any questions/queries can be directed to C_Sto on the challenge development Slack_

This is some basic documentation on how to build your challenge(s) so they work in harmony with the others and in the production Docker environment. This repo demonstrates how the entire games directory structure is to look like. We've provided you a set of sample files that represent different challenges to show how your contribution is expected to fit in with the other ones!

This assumes a few things, and because you've been approached to contribute challenge(s), we're sure you can handle it.

- That you know what Docker is, or, that you are capable of googling,
- You understand you can't run a Windows container on an Ubuntu host Docker,
- You understand there will only be one container per challenge and that the game organisers won't be expected to revert it when it gets rooted and `rm -rf`'ed,
- You can follow instructions to install Docker good, and
- You know what category and tier challenge(s) you are working on

## Expected deliverable

Refer to `Challenge Documentation Standard v*` in this repo. Ensure your deliverable meets the requirements!

## Docker & Docker Compose

The Docker host will be in the AWS cloud. The base OS will be Ubuntu `16.04.2 LTS`

PROD VERSION OF DOCKER:
```
docker-ce | 17.03.1~ce-0~ubuntu-xenial | https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages
```

Follow Docker instructions on how to get this version on the Docker website. (eg https://docs.docker.com/engine/installation/linux/ubuntu/ )

You can get this on kali by doing the following:

```
echo \
 "deb [arch=amd64] \
 https://download.docker.com/linux/debian \
 stretch stable" > \
 /etc/apt/sources.list.d/docker.list
curl -fsSL \
 https://download.docker.com/linux/debian/gpg | \
 sudo apt-key add -
apt update
apt install docker-ce=17.03.0*
```

PROD VERSION OF DOCKER-COMPOSE:
```
version 1.13.0
```
```
version 3.0 YML syntax
```

you can get the correct version of docker-compose by running the following (or clone it from GitHub):
```
pip install docker-compose==1.13.0
```

 Get these versions of Docker/docker-compose to ensure that your challenge(s) will work as expected in the game environment. Other versions of Docker *may* work, but don't be that guy.
 _If a challenge doesn't work in QA, and we find out it's because of Docker versioning, we may choose to just scrap it from the game. Don't be that guy/girl._


 ## Autonomy

 Your challenge(s) are expected to work out-of-the-box.
 A game organiser should only need to run `docker-compose up` and your Dockerfile/docker-compose file should execute any startup scripts necessary to bring the challenge to its fully working state.

## Port Ranges

To make (our) life easier, we have decided to allocate ports based on challenge type:

| Port | Challenge Category|
|----|----|
|1000| Web|
|2000| Forensics|
|3000| Crypto|
|4000| Exploitation|
|5000| Misc|

And also on challenge 'tier'. The second digit in the port number will correspond do the tier. So, for example;

|Port | Challenge|
|---|---|
|1100 |Web tier 1 |
|4400| Exploitation tier 4|

If you need more than 100 ports, let us know and we can work something out.

## Flag Format

Flag format is: `WACTF{FLAG_OF_YOUR_CHOICE}` - For challenges that players may be able to `strings` (or similar) the flag when you don't want them to, you can specify your own flag format, ensure this is documented in the challenge doco provided with your deliverable.

## What Now?

Go read the included `docker-compose` file and the `README` and `Dockerfile` in the `your-challenge` directory.

Now here's some handy commands that will make your docker-dev life better:

|Command|What it does|
|---|---|
| docker-compose up | This starts the Docker containers. You can use the `some-other-challenge` and `some-other-challenge-2` Docker images so that you can make sure that your container plays nice with others. |
| docker-compose up -d | This does the same as above, but launches in daemon mode so you don't have to do the "How do I exit VIM???" thing |
| docker-compose stop | This will stop the Docker containers |
| docker-compose rm | This removes the containers, you will want to do this if you are devving things (you won't have to download the base images again) |
| docker-compose build | This will re-build the Docker containers (if you make a change, rm then do this) |
