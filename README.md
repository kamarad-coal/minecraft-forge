Minecraft Forge Container
==========================

![Testing](https://github.com/kamarad-coal/minecraft-forge/workflows/Testing/badge.svg?branch=master)
![Docker Pulls](https://img.shields.io/docker/pulls/kamaradcoal/minecraft-forge)

Kamarad Coal is using the Minecraft Forge container to deploy servers on Kubernetes infrastructure in order to provide easy server spin-ups.

## Supported Minecraft versions

Kamarad Coal tests & builds only the latest patch versions for each minor versions. However, you might find images for non-latest-patches, because at some point that version was the latest patch.

The following Minecraft Forge versions are deployed on an day-to-day basis:

- `1.16.4-35.1.4`
- `1.15.2-31.2.0`
- `1.14.4-28.2.0`
- `1.13.2-25.0.219`
- `1.12.2-14.23.5.2854`
- `1.11.2-13.20.1.2386`
- `1.10.2-12.18.3.2185`
- `1.9.4-12.17.0.1976`
- `1.8.9-11.15.1.1722`

## Versioning

Forge builds support multiple Minecraft versions for each Github tag. The format for container tags is the following:

```
kamaradcoal/minecraft-forge:[forge_version]-[repo_tag]
```

For example, this is going to be the latest tag for Minecraft Forge `1.16.4-35.1.4`:

```
kamaradcoal/minecraft-forge:1.16.4-35.1.4-latest
```

For version-specific tags, you might use the following image and tag, `1.0.0` being the repo tag:

```
kamaradcoal/minecraft-forge:1.16.4-35.1.4-1.0.0
```

## Kubernetes Integration

Coming soon.
