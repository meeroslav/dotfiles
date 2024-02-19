#!/usr/bin/osascript

set dockList to {"Launchpad", "Safari", "Maps", "Photos", "FaceTime", "Contacts", "TV", "Music", "Freeform", "Keynote", "Numbers", "Pages", "App Store", "System Settings"}

repeat with thisRecord in dockList
    tell application "System Events"
        tell UI element thisRecord of list 1 of process "Dock"
            perform action "AXShowMenu"
            click menu item "Remove from Dock" of menu 1
        end tell
    end tell
end repeat