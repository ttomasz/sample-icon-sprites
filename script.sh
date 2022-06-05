#!/bin/bash

set -e

# spritezero-cli uses Node version 8
spritezero ./docs/maki ./external_repos/maki/icons/
spritezero --ratio=2 ./docs/maki@2 ./external_repos/maki/icons/

spritezero ./docs/temaki ./external_repos/temaki/icons/
spritezero --ratio=2 ./docs/temaki@2 ./external_repos/temaki/icons/

spritezero ./docs/nps ./external_repos/symbol-library/src/standalone/
spritezero --ratio=2 ./docs/nps@2 ./external_repos/symbol-library/src/standalone/

# with carto we first copy all SVG files to temp directory
# we are omitting some files since they are not exatcly icons, more like patterns
# and due to their size (usually 512x512) they would make the sprite too large
# additionally some patterns break the cli tool that generates sprites so one would need to filter offending files somehow
rm -rf /tmp/carto-icons/
mkdir /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/amenity/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/barrier/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/highway/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/historic/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/leisure/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/man_made/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/natural/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/office/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/place/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/religion/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/shields/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/shop/*.svg /tmp/carto-icons/
cp ./external_repos/openstreetmap-carto/symbols/tourism/*.svg /tmp/carto-icons/
spritezero ./docs/osm-carto /tmp/carto-icons/
spritezero --ratio=2 ./docs/osm-carto@2 /tmp/carto-icons/
rm -rf /tmp/carto-icons/
