on run
	tell application "Finder" to set targetPath to POSIX path of ((target of front window) as alias)
	if targetPath ends with "/" and length of targetPath > 1 then set targetPath to text 1 thru -2 of targetPath
	do shell script "/Applications/Ghostty.app/Contents/MacOS/ghostty --working-directory=" & quoted form of targetPath & " > /dev/null 2>&1 &"
end run
