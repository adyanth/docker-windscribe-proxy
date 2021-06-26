# Docker Windscribe Proxy

This docker image modifies the [wiorca/docker-windscribe](https://github.com/wiorca/docker-windscribe) to make it into a squid proxy.

Any service can use the VPN by using this container as a proxy on port 3129.

You need not publish the port if only docker containers will be using it.

If you need to change any squid configuration, you can change the `squid.conf` and rebuild or bind-mount your version at `/etc/squid/squid.conf`.
