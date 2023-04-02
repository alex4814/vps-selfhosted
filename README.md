# iHost
Hosting various services on your private server with Docker Compose.
A setup tool is provided for flexible configuration.

Every service is proxied by Caddy and could be accessed only by domain.



## Prerequisites
To use iHost, you need:

1. [Docker Engine](https://docs.docker.com/engine/install/) v20.10+
(with [Docker Compose](https://docs.docker.com/compose/) v2.15+).
2. [Poetry](https://github.com/python-poetry/poetry) 1.4+ (Python 3.7+)
3. A Domain

> Example for Linux Debian:
> 
> ```bash
> sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
> ```
> 
> If you install Docker Engine for the first time on a new host machine, refer to [official instructions](https://docs.docker.com/engine/install/debian/) on Debian.


## Usage
Jinja is used to generate `docker-compose.yml` and configurations of each service.


## Services

### [V2ray](https://github.com/v2fly/v2ray-core)
> A platform for building proxies to bypass network restrictions.

### [FreshRSS](https://github.com/FreshRSS/FreshRSS)
> A free, self-hostable aggregator.

### [Bitwarden](https://github.com/bitwarden/server)
> The core infrastructure backend (API, database, Docker, etc) needed for all bitwarden client applications.

TODO

### [memos](https://github.com/usememos/memos)
> A lightweight, self-hosted memo hub.

Note that `memos` only supports subdomain (e.g., `https://memos.example.com`), it fails if run under some path, i.e., `https://example.com/memos`

### [Remark42](https://github.com/umputun/remark42)
> A self-hosted, lightweight and simple (yet functional) comment engine, which doesn't spy on users.

Alternatives: [Twikoo](https://github.com/imaegoo/twikoo)


## Backup
TODO


## Restore
TODO


## Thanks
[Docker Practice](https://github.com/yeasy/docker_practice)  
[LNMP Docker](https://github.com/khs1994-docker/lnmp)
