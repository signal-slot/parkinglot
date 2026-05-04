#!/bin/sh
# Launch the Qt no-GPU parking lot app at a chosen resolution.
# Usage: qt-nogpu/run.sh [WxH] [-- extra qml6 args]
# Default: 1280x800
set -eu
RES="${1:-1280x800}"
shift || true

DIR="$(cd "$(dirname "$0")" && pwd)"
DESIGN="$DIR/../design/qt-nogpu/$RES"
if [ ! -d "$DESIGN" ]; then
    echo "error: no design at $DESIGN" >&2
    echo "available:" >&2
    ls "$DIR/../design/qt-nogpu" >&2
    exit 1
fi
DESIGN="$(cd "$DESIGN" && pwd)"

# main.qml does `import Design 1.0`; -I makes the chosen resolution's
# design/qt-nogpu/<WxH>/Design/qmldir resolve as that module — no Loader, no symlinks.
exec qml6 -I "$DESIGN" "$@" "$DIR/main.qml"
