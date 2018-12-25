
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# source dotfiles
for DOTFILE in `find ~/workspace/dotfiles/sys`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

bind -f ~/workspace/dotfiles/runcom/.inputrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jordanhochenbaum/workspace/google-cloud-sdk/path.bash.inc' ]; then . '/Users/jordanhochenbaum/workspace/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jordanhochenbaum/workspace/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/jordanhochenbaum/workspace/google-cloud-sdk/completion.bash.inc'; fi

tmux source-file ~/.tmux.conf
