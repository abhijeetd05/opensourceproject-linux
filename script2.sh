#!/bin/bash
# Script 2: FOSS Package Inspector

# Take package name as input
read -p "Enter package name (e.g. httpd, mysql, vlc, firefox): " PACKAGE

# Check if package is installed
if rpm -q "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi "$PACKAGE" | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

# Philosophy notes using case statement
case "$PACKAGE" in
    httpd)
        echo "Apache: the web server that built the open internet"
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps"
        ;;
    vlc)
        echo "VLC: plays everything, freedom in multimedia"
        ;;
    firefox)
        echo "Firefox: privacy-first browsing for the people"
        ;;
    git)
        echo "Git: distributed version control empowering developers"
        ;;
    *)
        echo "No philosophy note available for this package."
        ;;
esac
