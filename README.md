Minecraft Forge Container
==========================

![Testing](https://github.com/kamarad-coal/minecraft-forge/workflows/Testing/badge.svg?branch=master)

Kamarad Coal is using the Minecraft Forge container to deploy servers on Kubernetes infrastructure in order to provide easy server spin-ups.

## 🤝 Supporting

If you are using one or more Renoki Co. open-source packages in your production apps, in presentation demos, hobby projects, school projects or so, spread some kind words about our work or sponsor our work via Patreon. 📦

You will sometimes get exclusive content on tips about Laravel, AWS or Kubernetes on Patreon and some early-access to projects or packages.

[<img src="https://c5.patreon.com/external/logo/become_a_patron_button.png" height="41" width="175" />](https://www.patreon.com/bePatron?u=10965171)

## Supported Minecraft versions

Kamarad Coal tests & builds only the latest patch versions for each minor versions. However, you might find images for non-latest-patches, because at some point that version was the latest patch.

The following Minecraft Forge versions are deployed on an day-to-day basis:

- `1.16.5-36.1.0`
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
quay.io/kamaradcoal/minecraft-forge:[forge_version]-[repo_tag]
```

For example, this is going to be the latest tag for Minecraft Forge `1.16.5-36.1.0`:

```
quay.io/kamaradcoal/minecraft-forge:1.16.5-36.1.0-latest
```

### Version Specific Tags

For version-specific tags, you might use the following image and tag, `1.0.0` being the repo tag:

```
quay.io/kamaradcoal/minecraft-forge:1.16.5-36.1.0-1.0.0
```

For Minecraft version-specific tags, you might use the following image and tag, where `1.0.0` is the repo tag and `1.16.5` is the Minecraft version:

```
quay.io/kamaradcoal/minecraft-forge:1.16.5-1.0.0
```

### Minecraft Majors and Minor versions

You can also specify major repo versions, where `1.0` means `1.0.x`:

```
quay.io/kamaradcoal/minecraft-forge:1.16.5-1.0
```

You can also specify major.minor repo versions, where `1` means `1.x` (all 1.x versions):

```
quay.io/kamaradcoal/minecraft-forge:1.16.5-1
```

### Latest Tags

For latest tags, use `latest` instead any other version, either by Minecraft version or by Forge version:

```
quay.io/kamaradcoal/minecraft-forge:1.16.5-latest
```

```
quay.io/kamaradcoal/minecraft-forge:1.16.5-36.1.0-latest
```

## Kubernetes Integration

Coming soon.
