export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

install_pyenv_prereqs() {
    if [ $(awk -F= '/^NAME/{print $2}' /etc/os-release) = "\"Ubuntu\"" ]; then
        sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev
    else
        sudo yum install -y sqlite-devel openssl-devel llvm # ...need more here
    fi
}

init_pyenv() {
    if [ $(command -v pyenv) ]; then
        eval "$(pyenv init -)"
        eval "$(pyenv virtualenv-init -)"
        # export PYENV_VIRTUALENV_DISABLE_PROMPT=1
    fi
}

install_pyenv() {
    install_pyenv_prereqs
    git clone https://github.com/pyenv/pyenv.git $PYENV_ROOT
    git clone https://github.com/pyenv/pyenv-virtualenv.git $PYENV_ROOT/plugins/pyenv-virtualenv
    init_pyenv
}

install_python() {
    pyenv install 2.7.17
}

activate_ctool() {
    pyenv activate ctool-env
}

install_ctool() {
    install_pyenv
    install_python
    pyenv virtualenv 2.7.17 ctool-env
    activate_ctool
    pip install git+ssh://git@github.com/riptano/ctool.git@master#egg=automaton

}

upgrade_ctool() {
    activate_ctool
    pip install --upgrade --upgrade-strategy=eager git+ssh://git@github.com/riptano/ctool.git@master#egg=automaton
    ctool --version
}

init_pyenv
