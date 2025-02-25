FROM ubuntu:22.04@sha256:ed1544e454989078f5dec1bfdabd8c5cc9c48e0705d07b678ab6ae3fb61952d2

# renovate: datasource=deb depName=locales
ENV LOCALES_VERSION="2.35-0ubuntu3.9"

# renovate: datasource=deb depName=curl
ENV CURL_VERSION="7.81.0-1ubuntu1.20"

# renovate: datasource=deb depName=gnupg2
ENV GNUPG2_VERSION="2.2.27-3ubuntu2.1"

# renovate: datasource=deb depName=logrotate
ENV LOGROTATE_VERSION="3.19.0-1ubuntu1.1"

# renovate: datasource=deb depName=tzdata
ENV TZDATA_VERSION="2024b-0ubuntu0.22.04.1"

RUN apt-get update \
  && apt-get install -y \
    curl=${CURL_VERSION} \
    gnupg2=${GNUPG2_VERSION} \
    locales=${LOCALES_VERSION} \
    logrotate=${LOGROTATE_VERSION} \
    tzdata=${TZDATA_VERSION} \
  && rm -rf /var/lib/apt/lists/*
