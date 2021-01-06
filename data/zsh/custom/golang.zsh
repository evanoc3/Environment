# GOPATH environment variable is used by golang to determine its root directory
export GOPATH="/usr/local/go/ext"

if [[ ! -d "$GOPATH" ]]; then
  mkdir -p "$GOPATH" > /dev/null
fi