#!/bin/bash

PACKAGE="python3"

if command -v $PACKAGE > /dev/null 2>&1
then
    echo "$PACKAGE is installed."
    $PACKAGE --version
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    python3)
        echo "Python: a simple and powerful open-source programming language"
        ;;
    git)
        echo "Git: version control system for developers"
        ;;
    firefox)
        echo "Firefox: open-source web browser"
        ;;
    vlc)
        echo "VLC: media player that supports all formats"
        ;;
    *)
        echo "Unknown package"
        ;;
esac
