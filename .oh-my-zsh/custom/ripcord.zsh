if [[ -d ${HOME}/ripcord ]] then
   export PATH=${HOME}/ripcord/opscenterd/node_modules/.bin:${PATH}
fi

alias .gr="cd ${HOME}/ripcord; ./gradlew"
alias .grp=".gr --parallel"
alias .grr=".gr --no-daemon --rerun-tasks"
alias .grx=".grr --parallel"
alias .grk=".gr --stop"
alias .grc=".gr clean"
alias .opsc="cd ${HOME}/ripcord/opscenterd; ./bin/opscenter -f"
alias .merge="cd ${HOME}/ripcord; ./bin/merge.py"
alias .afts="cd ${HOME}/ripcord/spock/afts/q ; source ~/.venv/lcm-afts/bin/activate"
alias .tacb="cd ${HOME}/ripcord; .gr \
      :configbuilder:test :spock:test \
      :configbuilder-cli:shadowJar :configbuilder-cli:test \
      :dse-server-config-builder:test"
