case $OSTYPE in
    darwin*)
        export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
    ;;
esac
