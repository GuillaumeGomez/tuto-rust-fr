#!/bin/bash

(
echo "---"
echo "title: Tutoriel Rust"
echo "author: Guillaume GOMEZ"
echo "lang: fr-FR"
echo "date: `date +%Y`"
echo "cover-image: rust-logo.png"
echo "description: Rust est un langage initié par Mozilla, désormais soutenu par la Rust Foundation et poussé par ses nombreux contributeurs sur GitHub. Ce tutoriel s'adresse à des développeurs ayant déjà programmé dans un autre langage. Ici, vous apprendrez toutes les bases afin que vous puissiez vous débrouiller tout seul par la suite."
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
