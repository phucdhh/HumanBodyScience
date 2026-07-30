#!/bin/bash
# Manual changelog entry script
# Usage: ./update_changelog.sh "Your changelog message"

CHANGELOG_FILE="downloads/changelog.txt"

if [ $# -eq 0 ]; then
    echo "Usage: $0 \"Your changelog message\""
    echo "Example: $0 \"Thêm 5 hình minh họa vào chương 4\""
    exit 1
fi

MESSAGE="$1"
VERSION=$(ls -t downloads/HumanBodyScience.*.pdf | head -1 | sed 's/.*HumanBodyScience\.\(.*\)\.pdf/\1/')

if [ -z "$VERSION" ]; then
    echo "Error: No version found"
    exit 1
fi

# Find the line number where current version starts
LINE_NUM=$(grep -n "## Phiên bản $VERSION" "$CHANGELOG_FILE" | head -1 | cut -d: -f1)

if [ -z "$LINE_NUM" ]; then
    echo "Error: Version $VERSION not found in changelog"
    exit 1
fi

# Insert the message after "### Thay đổi" section
TEMP_FILE=$(mktemp)
awk -v line="$LINE_NUM" -v msg="$MESSAGE" '
    NR <= line + 7 { print; next }
    !done { print "- " msg; done=1 }
    { print }
' "$CHANGELOG_FILE" > "$TEMP_FILE"

mv "$TEMP_FILE" "$CHANGELOG_FILE"

echo "✓ Added to changelog: $MESSAGE"
