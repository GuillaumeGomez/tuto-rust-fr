#!/bin/bash

(
echo "---"
echo "title: Tutoriel Rust"
echo "author: Guillaume GOMEZ"
echo "lang: fr-FR"
echo "date: `date +%Y`"
echo "cover-image: rust-logo.png"
echo "description: `tail -n +5 README.md`"
echo "---"
echo

echo "# Les bases de la programmation en Rust"
find src/1*md -type f -name '*.md' | \
    sort -t _ -k 1.3 -k 2.2 -k 2.1 -n | \
    while read l ; do \
        tail -n +2 ${l} ; \
        echo ; \
    done

echo
echo "# Spécificités de Rust"
find src/2*md -type f -name '*.md' | \
    sort -t _ -k 1.3 -k 2.2 -k 2.1 -n | \
    while read l ; do \
        tail -n +2 ${l} ; \
        echo ; \
    done

echo
echo "# Aller plus loin"
find src/3*md -type f -name '*.md' | \
    sort -t _ -k 1.3 -k 2.2 -k 2.1 -n | \
    while read l ; do \
        tail -n +2 ${l} ; \
        echo ; \
    done

) | pandoc -f markdown -t epub2 -o tuto-rust.epub
