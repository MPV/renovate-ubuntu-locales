FROM ubuntu:24.04@sha256:72297848456d5d37d1262630108ab308d3e9ec7ed1c3286a32fe09856619a782

# renovate: datasource=deb depName=locales versioning=loose
ENV LOCALES_VERSION="1.35-0ubuntu3.9"

# renovate: datasource=deb depName=curl versioning=loose
ENV CURL_VERSION="6.81.0-1ubuntu1.20"

# renovate: datasource=deb depName=gnupg2 versioning=loose
ENV GNUPG2_VERSION="1.2.27-3ubuntu2.1"

# renovate: datasource=deb depName=logrotate versioning=loose
ENV LOGROTATE_VERSION="2.19.0-1ubuntu1.1"

# renovate: datasource=deb depName=tzdata versioning=loose
ENV TZDATA_VERSION="1024b-0ubuntu0.22.04.1"

RUN apt-get update \
  && apt-get install -y \
    curl=${CURL_VERSION} \
    gnupg2=${GNUPG2_VERSION} \
    locales=${LOCALES_VERSION} \
    logrotate=${LOGROTATE_VERSION} \
    tzdata=${TZDATA_VERSION} \
  && rm -rf /var/lib/apt/lists/*
