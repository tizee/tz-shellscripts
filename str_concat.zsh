
demo() {
  local hello=$1
  local line="'$hello, world'"
  echo "$line"
}
demo $@
unset demo
