#!/bin/bash -eu

install_plugins () {
    local repo

    # Read plugins, ignoring comments starting with " or #
    for repo in $(cat $1-plugins.vim | grep -Ev '^["#]|^$'); do
        local plugin=${repo/*\//}

        if [[ ! -d ~/.vim/pack/$package/$1/$plugin ]]; then
            echo Installing vim plugin: $plugin...
            git clone https://github.com/$repo ~/.vim/pack/$package/$1/$plugin 2> /dev/null
        fi
    done
}

cd $(dirname $BASH_SOURCE)
package=dotfiles

# Load functions
. ../lib/symlinks.sh

[[ -d ~/.vim ]] || mkdir ~/.vim
link_files_in . -t ~/.vim

install_plugins start
install_plugins opt
