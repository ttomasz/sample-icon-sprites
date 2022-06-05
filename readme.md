# About

This repo provides packaged [sprites](https://maplibre.org/maplibre-gl-js-docs/style-spec/sprite/) that can be used when debugging/testing vector tile maps leveraging libraries such as [MapLibre GL JS](https://maplibre.org/).

See available files at: https://ttomasz.github.io/sample-icon-sprites/

Inspired by: https://github.com/orangemug/font-glyphs

# Generating sprites

[spritezero-cli](https://github.com/mapbox/spritezero-cli) uses Node version 8, you can install it using [NVM](https://github.com/nvm-sh/nvm).

Cloning repo doesn't pull submodules automatically. [Read GIT docs](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to see how to pull submodules.

File `script.sh` contains a script that will generate sprites in `./docs` folder.
