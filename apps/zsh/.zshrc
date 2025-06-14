ZSHHOME="${HOME}/.zsh.d"
echo "ZSHHOME: $ZSHHOME"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    echo "$ZSHHOME is accessible."
    for i in $ZSHHOME/*; do
        echo "Processing: $i"
        if [[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ]; then
            . $i
        fi
    done
else
    echo "Error: $ZSHHOME does not exist, is not readable, or not executable."
fi
