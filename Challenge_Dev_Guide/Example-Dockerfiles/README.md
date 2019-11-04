# README

There are container restrictions when building challenges for WACTF, we have provided some sample Dockerfiles to help get you started. The list of restrictions are as follows. If you container does anything it `SHOULD NOT` you MUST speak with organisers to discuss limitations and mitigations.

Your container:

- MUST make use a small/limited attack surface base image. For example `alpine:latest` or using `scratch` with statically compiled `golang` binaries

- MUST NOT run as `root`

- SHOULD expose a port >1024 to avoid the container needing to be granted additional Linux capabilities (since it won’t be running as root)

- SHOULD operate in a Docker environment that uses the `AppArmor` profile included in this repository and the [gVisor](https://gvisor.dev/docs/user_guide/quick_start/kubernetes/) runtime

- SHOULD NOT require volume mounts

- SHOULD NOT permit players to gain `root` privileges on the container

- SHOULD NOT require additional Linux capabilities such as `NET_ADMIN` or `privileged` mode

- SHOULD NOT require more than `230Mhz CPU` and `180Mb RAM` to run efficiently
