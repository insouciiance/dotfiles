autoload -Uz vcs_info
autoload -Uz add-zsh-hook

# Define how git info should look
# Notice the leading space – only appears if vcs_info prints something
zstyle ':vcs_info:git:*' formats ' '$'\ue0a0 ''%b'
zstyle ':vcs_info:git:*' actionformats ' '$'\ue0a0 ''%b|%a'

# Update vcs_info before each prompt
precmd() { vcs_info }

# Enable prompt substitution
setopt prompt_subst

PROMPT='%F{#7AA2F7}%n%f%F{#C8CBF0}@%f%F{#7AA2F7}%m%f %F{#EC8750}%~%f%F{#33A78A}${vcs_info_msg_0_}%f %F{#C8CBF0}$%f '
