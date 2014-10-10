#!/bin/sh
repos=(
    "$HOME/.vim"
    "$HOME/.vimuser-jszakmeister"
    "$HOME/.vimuser"
    "$HOME/projects/etc"
)

echo "Attempting to update" ${#repos[@]} "repositories.\n"

for repo in "${repos[@]}"
do
    echo "-- CHECKING" ${repo} "FOR UPDATES --"
    cd "${repo}"
    git ffwd

    echo "-- FINISHED --\n"
done

echo "All listed repositories updated."
