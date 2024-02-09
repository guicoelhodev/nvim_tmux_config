<h1 align='center'>My setup to use nvim with tmux</h1>



### This project use nvChad as editor, add all dependencies first, see here: 


<a href='https://nvchad.com/docs/quickstart/install' target='_blank'>Nv chad install</a>

Use this command to config TSConfig LSP

```:CocInstall coc-json coc-tsserver```

After that, you can use ```:CocInstall or :CocRestart```



## Tmux config 

```
~/.tmux.conf


bind-key : command-prompt
bind-key r refresh-client
bind-key L clear-history

bind-key space next-window
bind-key bspace previous-window
bind-key enter next-layout

# use vim-like keys for splits and windows
bind-key v split-window -h
bind-key s split-window -v

bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

# smart pane switching with awareness of vim splits
bind -n C-h run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-h) || tmux select-pane -L"
bind -n C-j run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-j) || tmux select-pane -D"
bind -n C-k run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-k) || tmux select-pane -U"
bind -n C-l run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys C-l) || tmux select-pane -R"
bind -n 'C-\' run "(tmux display-message -p '#{pane_current_command}' | grep -iqE '(^|\/)vim$' && tmux send-keys 'C-\\') || tmux select-pane -l"
bind C-l send-keys 'C-l'

# Easy config reload
bind-key R source-file ~/.tmux.conf \; display-message "tmux.conf reloaded."
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-resurrect'
run '~/.tmux/plugins/tpm/tpm'

# mouse behavior
setw -g mouse on
bind-key [ copy-mode
bind-key ] paste-buffer

```

After that, do this: 

```

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf

```

To use Tmux plugin use the next commands: 

```

(Ctrl + b) + (Ctrl + I) => Add all dependencies;

(Ctrl + b) + (Ctrl + S) => Save all sessions;

(Ctrl + b) + (Ctrl + R) => Reload all sessions;

```
