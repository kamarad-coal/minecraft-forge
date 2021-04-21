FROM alpine:3.13

# Will be replaced at the building step. Used to know
# which version of Minecraft Forge should be downloaded.
ARG MINECRAFT_VERSION=1.16.5
ARG FORGE_VERSION=1.16.5-36.1.0

# Specifying Java envs.
ENV JAVA_VERSION_MAJOR=8
ENV JAVA_VERSION_MINOR=112
ENV JAVA_VERSION_BUILD=15
ENV JAVA_PACKAGE=server-jre
ENV JAVA_HOME=/opt/jdk
ENV PATH=${PATH}:/opt/jdk/bin

# Specifying OS envs.
ENV LANG=C.UTF
ENV UID=1000
ENV GUID=1000

LABEL maintainer="Kamarad Coal <alex@renoki.org>"

WORKDIR /minecraft

ADD /minecraft/run.sh /minecraft/cleanup.sh /minecraft/server.properties /minecraft/

# Install packages.
RUN apk upgrade --update && \
    apk add --update wget curl ca-certificates openssl bash git screen util-linux sudo shadow nss && \
    update-ca-certificates && \
    apk add openjdk8-jre && \
    # Add "kamarad" user than can access "/minecraft"
    addgroup -g 1000 -S kamarad && \
    adduser -u 1000 -S kamarad -G kamarad -h /minecraft && \
    echo "kamarad ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/kamarad && \
    chown kamarad:kamarad /minecraft && \
    # Download & install the JAR file for the current version.
    wget https://files.minecraftforge.net/maven/net/minecraftforge/forge/${FORGE_VERSION}/forge-${FORGE_VERSION}-installer.jar && \
    mkdir /minecraft/mods && \
    java -jar forge-${FORGE_VERSION}-installer.jar --installServer && \
    chmod +x cleanup.sh && \
    sh cleanup.sh && \
    rm -rf cleanup.sh && \
    chmod +x /minecraft/run.sh && \
    rm -rf .git/ .github/ *.md

EXPOSE 25565

ENTRYPOINT ["/minecraft/run.sh"]
