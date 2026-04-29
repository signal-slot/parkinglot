#!/bin/sh
# Launch the Slint parking lot app at a chosen resolution via slint-viewer.
# Usage: slint/run.sh [WxH] [-- extra slint-viewer args]
# Default: 1024x600
set -eu
RES="${1:-1024x600}"
shift || true

DIR="$(cd "$(dirname "$0")" && pwd)"
DESIGN="$DIR/../design/slint/$RES"
if [ ! -d "$DESIGN" ]; then
    echo "error: no design at $DESIGN" >&2
    echo "available:" >&2
    ls "$DIR/../design/slint" >&2
    exit 1
fi

# main.slint imports MainWindow via the @design library;
# slint-viewer's -L flag maps the library name to the chosen design directory.
exec slint-viewer -L "design=$DESIGN" "$@" "$DIR/main.slint"
