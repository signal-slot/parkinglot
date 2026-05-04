#!/bin/sh
# Launch the Qt (GPU + Qt5Effects) parking lot app at a chosen resolution.
# Usage: qt/run.sh [WxH] [-- extra qml6 args]
# Default: 1024x600
set -eu
RES="${1:-1024x600}"
shift || true

DIR="$(cd "$(dirname "$0")" && pwd)"
DESIGN="$DIR/../design/qt/$RES"
if [ ! -d "$DESIGN" ]; then
    echo "error: no design at $DESIGN" >&2
    echo "available:" >&2
    ls "$DIR/../design/qt" >&2
    exit 1
fi
DESIGN="$(cd "$DESIGN" && pwd)"

# main.qml does `import Design 1.0`; -I makes the chosen resolution's
# design/qt/<WxH>/Design/qmldir resolve as that module — no Loader, no symlinks.
exec qml6 -I "$DESIGN" "$@" "$DIR/main.qml"
