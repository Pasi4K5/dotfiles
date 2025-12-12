repo_path="$HOME/.dotfiles/"
repo_url="https://github.com/Pasi4K5/dotfiles.git"
backup_path="$HOME/.dotfiles-backup/"
git="/usr/bin/git"

if [[ ! -x $git ]]
then
    echo "Please install git to continue."

    exit 1
fi

git clone --bare $repo_url $repo_path
alias cfg="/usr/bin/git --git-dir=$repo_path --work-tree=$HOME"

cfg checkout

if [ $? -ne 0 ]
then
    echo "Conflict detected. Backing up old dotfiles into $backup_path."

    mkdir -p $backup_path
    cfg checkout 2>&1 | grep -P "^\t.+" | awk {'print $1'} | xargs -I{} mv {} $backup_path{}

    cfg checkout
fi

cfg config --local status.showUntrackedFiles no

echo "Done."

