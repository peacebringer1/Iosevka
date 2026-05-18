# Syzpori

Customised fork of [Iosevka](https://github.com/be5invis/Iosevka).

All customisations are defined in `private-build-plans.toml` file.

# How to build and install

Either you can use original instruction (https://github.com/be5invis/Iosevka/blob/main/doc/custom-build.md) or convenient `Makefile` script.

If using `Makefile` route, then you need to make sure that you have `podman`. Install it from repositories.

NOTE: you can change `podman` executions to `docker` in `Makefile` if there is `docker` present. 

Then run build:

```shell
make build
```

NOTE: it builds all three variants. May take some time.

The output result is in `dist/`, represented in three directories, which are consist of monospace, sans-serif and serif fonts respectively.

To install them for current user you can run that command:

```shell
make install
```

Or you can move output fonts into directory where your system can read and use them.


# Contents

In private build plan defined three variants of fonts:

- Monospace (term, serif);
- Sans-serif (quasi-proportional);
- Serif (quasi-proportional).

Relatively of `dist/` directory, the fonts are located in these folders respectively:

- `IosevkaCustomMono/` - `*.ttf`;
- `IosevkaCustomSans/` - `*.ttf`;
- `IosevkaCustomSerif/` - `*.ttf`.

Each variant has only four types:

- Regular;
- Italic;
- Bold;
- Bold Italic.

# Note

For another details refer to the original repository: https://github.com/be5invis/Iosevka/.