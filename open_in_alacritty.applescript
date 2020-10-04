on run {input, parameters}
	(* Convert to POSIX PATH *)
	set p to POSIX path of input
	do shell script "/usr/local/bin/alacritty --working-directory " & p
	return input
end run
