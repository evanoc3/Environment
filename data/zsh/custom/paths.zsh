potential_paths=(
	"$HOME/bin"
)

for potential_path in $potential_paths; do
	if [[ -e $potential_path ]]; then
		export PATH="$PATH:$potential_path"
	fi
done