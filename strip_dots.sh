ls -a | sed -n -r 's/^[\.](.+)/mv .\1 \1/p' | zsh
