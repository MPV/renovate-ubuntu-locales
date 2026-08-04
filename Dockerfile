FROM ubuntu:22.04@sha256:3b06811b2afd352be909dd088a004166d665dc76d38b13eada33522a9d915c6f

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
