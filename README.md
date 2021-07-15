# Docker Windscribe Proxy

[![Drone Build Status](https://drone.adyanth.site/api/badges/adyanth/docker-windscribe-proxy/status.svg)](https://drone.adyanth.site/adyanth/docker-windscribe-proxy)
[![Docker pulls](https://img.shields.io/docker/pulls/adyanth/windscribe-proxy.svg)](https://hub.docker.com/r/adyanth/windscribe-proxy)

This docker image modifies the [wiorca/docker-windscribe](https://github.com/wiorca/docker-windscribe) to make it into a squid proxy.

Any service can use the VPN by using this container as a proxy on port 3128 with no authentication.

You need not publish the port if only docker containers will be using it.

If you need to change any squid configuration, you can change the `squid.conf` and rebuild or bind-mount your version at `/etc/squid/squid.conf`.

For an example on how to use it, see my configuration of using it with [Prowlarr](https://github.com/Prowlarr/Prowlarr) here: [DockerComposeApps/prowlarr](https://git.adyanth.site/DockerComposeApps/prowlarr/src/branch/main/docker-compose.yml)
