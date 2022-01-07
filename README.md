# Docker Windscribe Proxy

[![Drone Build Status](https://drone.adyanth.site/api/badges/adyanth/docker-windscribe-proxy/status.svg)](https://drone.adyanth.site/adyanth/docker-windscribe-proxy)
[![Docker pulls](https://img.shields.io/docker/pulls/adyanth/docker-windscribe-proxy.svg)](https://hub.docker.com/r/adyanth/docker-windscribe-proxy)

This docker image modifies the [wiorca/docker-windscribe](https://github.com/wiorca/docker-windscribe) to make it into a proxy.

Any service can use the VPN by using this container as a proxy on port 3128 with no authentication.

You need not publish the port if only docker containers will be using it.

If you need to change any squid configuration, you can change the `squid.conf`/`tinyproxy.conf` and rebuild or bind-mount your version at `/etc/squid/squid.conf`/`/etc/tinyproxy/tinyproxy.conf`.

The `tinyproxy` image tag replaces squid proxy with tinyproxy that runs better for me. YMMV.

For an example on how to use it, see my configuration of using it with [Prowlarr](https://github.com/Prowlarr/Prowlarr) here: [DockerComposeApps/prowlarr](https://git.adyanth.site/DockerComposeApps/prowlarr/src/branch/main/docker-compose.yml)

You can find the [git repo here](https://git.adyanth.site/adyanth/docker-windscribe-proxy).