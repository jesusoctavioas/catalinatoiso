hdiutil create -o /tmp/Catalina -size 8500m -volname Catalina -layout SPUD -fs HFS+J

hdiutil attach /tmp/Catalina.dmg -noverify -mountpoint /Volumes/Catalina

sudo /Applications/Install\ macOS\ Catalina.app/Contents/Resources/createinstallmedia --volume /Volumes/Catalina --nointeraction

hdiutil detach /volumes/Install\ macOS\ Catalina

hdiutil convert /tmp/Catalina.dmg -format UDTO -o ~/Desktop/Catalina.cdr

mv ~/Desktop/Catalina.cdr ~/Desktop/Catalina.iso
