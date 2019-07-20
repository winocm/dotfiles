#!/bin/sh
source functions/common

_vid=$(ioreg -n IOHIDInterface -r | awk '$2 == "\"VendorID\"" { print $4 }')
_pid=$(ioreg -n IOHIDInterface -r | awk '$2 == "\"ProductID\"" { print $4 }')

__vid=$(echo -n "$_vid" | grep -c "^")
__pid=$(echo -n "$_pid" | grep -c "^")

if [ $__vid -eq $__pid ]; then
    _hid_identifier=""
    while read -r _vid && read -r _pid <&3; do
        if [ -n "$_hid_identifier" ]; then
            _hid_identifier+=" "
        fi
        _hid_identifier+="$_vid-$_pid-0"
        done <<< "$_vid" 3<<< "$_pid"

        _hid_identifier=$(echo $_hid_identifier | xargs -n1 | sort -u)
        while read -r _hid; do
            print_line "Remapping keys for $_hid."
            defaults -currentHost write -g com.apple.keyboard.modifiermapping.$_hid -array \
'    <dict>
        <key>HIDKeyboardModifierMappingDst</key>
        <integer>30064771300</integer>
        <key>HIDKeyboardModifierMappingSrc</key>
        <real>30064771129</real>
    </dict>
    <dict>
        <key>HIDKeyboardModifierMappingDst</key>
        <real>30064771129</real>
        <key>HIDKeyboardModifierMappingSrc</key>
        <real>30064771300</real>
    </dict>
    <dict>
        <key>HIDKeyboardModifierMappingDst</key>
        <real>30064771129</real>
        <key>HIDKeyboardModifierMappingSrc</key>
        <real>30064771296</real>
    </dict>'
        done <<< "$_hid_identifier"
fi
