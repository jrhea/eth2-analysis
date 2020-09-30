#!/bin/bash

# USAGE EXAMPLE:
# rumor shell < <(sh nodeid-from-enr.sh enr:-LK4QFZl8ZINtqjj111TGeO5zydMKD9a5EjK5aKqIVLs3QbncHtBhyga94F3oVa-4x3uLKCEqbvjrfJwskULxEd-wp8Bh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCi7FS9AAAAAP__________gmlkgnY0gmlwhH8AAAGJc2VjcDI1NmsxoQJrBqjQZIzKlIyaNrbbPW4oo715Sy0AHhLcWVD87iiH9oN0Y3CCIyiDdWRwgiMo)| tr -d '\r\n' | cut -d'=' -f15 | cut -d' ' -f1


IFS='' read -r -d '' SCRIPT <<"EOF"
ENR=FOO\n
enr view --enr $ENR\n
enr view --kv $__enr\n
exit\n
EOF

echo ${SCRIPT/FOO/$1}
