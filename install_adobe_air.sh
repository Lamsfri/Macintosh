#!/bin/bash

# Montage du dmg
echo "MDP" | sudo -S hdiutil mount /Applications/AdobeAIR.dmg

# installatiion silencieuse.
echo "MDP" | sudo -S /Volumes/Adobe\ AIR/Adobe\ AIR\ Installer.app/Contents/MacOS/Adobe\ AIR\ Installer -silent -eulaAccepted
