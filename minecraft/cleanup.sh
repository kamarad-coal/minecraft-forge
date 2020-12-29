#!/bin/bash

rm -rf forge-${FORGE_VERSION}-installer.jar forge-${FORGE_VERSION}-installer.jar.log

# Forge builds that come with universal installers should be moved to forge.jar.
if [ -f /minecraft/forge-${FORGE_VERSION}-${MINECRAFT_VERSION}-universal.jar ]; then
    mv /minecraft/forge-${FORGE_VERSION}-${MINECRAFT_VERSION}-universal.jar /minecraft/forge.jar
fi

# Forge builds that come with server installers-only should be moved to forge.jar
# For example, 1.12.x builds a file like forge-1.12.2-14.23.5.2854.jar
if [ -f /minecraft/forge-${FORGE_VERSION}.jar ]; then
    mv /minecraft/forge-${FORGE_VERSION}.jar /minecraft/forge.jar
fi
