
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don't want to commit.
for file in ~/.dotfiles/system/.{env,aliases,functions,prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
