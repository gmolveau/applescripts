on run
	tell application "Finder" to set targetPath to POSIX path of ((target of front window) as alias)
	if targetPath ends with "/" and length of targetPath > 1 then set targetPath to text 1 thru -2 of targetPath

	tell application "Ghostty"
		set cfg to new surface configuration
		set initial working directory of cfg to targetPath

		if (count of windows) > 0 then
			new tab in front window with configuration cfg
		else
			new window with configuration cfg
		end if
	end tell
end run
