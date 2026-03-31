#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

# Input with validation
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Default values if empty
TOOL=${TOOL:-"Linux"}
FREEDOM=${FREEDOM:-"liberty"}
BUILD=${BUILD:-"knowledge"}

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_${USER}.txt"

# Create clean manifesto (overwrite file instead of appending junk repeatedly)
{
    echo "===== Open Source Manifesto ====="
    echo "Author: $USER"
    echo "Date: $DATE"
    echo ""
    echo "I believe in the power of open source."
    echo "Every day, I rely on $TOOL, a tool that represents collaboration and innovation."
    echo "To me, freedom means $FREEDOM — the ability to learn, modify, and share without limits."
    echo "I aspire to build $BUILD and share it openly with the world,"
    echo "so that others can benefit, improve it, and continue the cycle of knowledge."
    echo ""
    echo "Open source is not just code; it is a movement."
} > "$OUTPUT"

# Output result
echo ""
echo "✅ Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"
