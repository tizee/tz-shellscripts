git ls-files -t | grep -e '^S' | cut -d' ' -f2- | xargs -n 1 dirname | uniq | sed -e 's/^\.$//' | sed -e '/^$/d' | uniq
