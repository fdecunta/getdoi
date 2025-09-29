install: getdoi.sh
        cp getdoi.sh getdoi
        chmod +x getdoi
        sudo mv getdoi /usr/local/bin/

remove:
        sudo rm getdoi /usr/local/bin/getdoi

.PHONY: install remove
