# Simple aliases for my preferred list commands.
alias ll="exa -lhs modified"
alias lt="ll"
alias la="exa -alhs modified"

# Potato
alias potato="python -c \"print(u'\U0001F954')\" "

# Alias for making virtual environment with python 3.7
alias mkvenv37='function _x(){ mkvirtualenv -p /usr/bin/python3.7 $1 };_x'
alias mkvenv38='function _x(){ mkvirtualenv -p /usr/bin/python3.8 $1 };_x' 

# forcing emacs start up on terminal window
alias emacs="emacs27 -nw"

# bump this repo
alias bump-this="echo bump >> bump && git add bump && git commit -m \"bump\" && git pull --rebase && git push"
alias bump-this-repo=bump-this


# alias for difftool with meld and directory by default
alias gdiff="git difftool --dir-diff"

# include my experimental bin directory on path
export PATH=/home/pedrodasilva/.mybins:$PATH

# gcloud default settings
export GOOGLE_APPLICATION_CREDENTIALS=/home/pedrodasilva/.keys/playground-project-service-account-creds.json
export DEFAULT_KMS_KEY=projects/sixty-sdc-kms/locations/global/keyRings/common/cryptoKeys/common


# activate mkwin.sh auto complete targeting ~/Devs
source _mkwin_complete.sh
compctl -K _mkwin mkwin.sh


# Auto sync target file or directory to another location with inotifywait and rsynx
function sync-dir-to () {
    while inotifywait -r $1/* ;
    do
        echo "Synching ...";
        rsync -ravXP --delete $1/ $2/;
    done
}
