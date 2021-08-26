#!/usr/bin/env sh
fd 'tz-' -0 | sed -E 's/tz-//g' | xargs -0 -I {} mv -v 'tz-{}' 'init-{}'
