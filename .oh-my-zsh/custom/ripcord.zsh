if [[ -d ${HOME}/ripcord ]] then
   export PATH=${HOME}/ripcord/opscenterd/node_modules/.bin:${PATH}
fi

alias .gr="cd ${HOME}/ripcord; ./gradlew --no-daemon --rerun-tasks --parallel"
alias .grx="cd ${HOME}/ripcord; ./gradlew"
alias .opsc="cd ${HOME}/ripcord/opscenterd; ./bin/opscenter -f"
alias .merge="cd ${HOME}/ripcord; ./bin/merge.py"
alias .afts="cd ${HOME}/ripcord/spock/afts/q ; source ~/.venv/lcm-afts/bin/activate"
