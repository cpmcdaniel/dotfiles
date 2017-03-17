case $OSTYPE in
    darwin*)
        eval $(gdircolors ~/.dircolors)
        ;;
    *)
        eval $(dircolors ~/.dircolors)
        ;;
esac
