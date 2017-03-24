
{
    echo "alias ne='emacs'"
    echo "alias fig='docker-compose'"

    echo "export LS_OPTIONS='--color=auto'"
    echo "eval \"\`dircolors\`\""
    echo "alias ls='ls \$LS_OPTIONS'"
    echo "alias ll='ls \$LS_OPTIONS -l'"
    echo "alias l='ls \$LS_OPTIONS -lA'"

    echo "alias grep='grep --color'"
} >> /root/.bashrc

mkdir /root/.ssh
cp /tmp/.authorized_keys2 /root/.ssh/.authorized_keys2
