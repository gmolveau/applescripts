on run
	tell application "Finder"
		set sel to selection
		if (count of sel) > 0 then
			set targetPath to POSIX path of (item 1 of sel as alias)
		else
			set targetPath to POSIX path of ((target of front window) as alias)
		end if
		if targetPath ends with "/" and length of targetPath > 1 then set targetPath to text 1 thru -2 of targetPath
	end tell
	do shell script "open -a 'Zed' " & quoted form of targetPath
end run
