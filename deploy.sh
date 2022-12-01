EXECUTION_PATH=$(pwd)
SHELL_SCRIPT_PATH=$(dirname $0)
BRANCH=${1}
PROFILE=${2}










function pull() {
  echo -e ""
  echo -e ">> Pull Request 🏃♂️ "
  sudo git pull origin $BRANCH
}

function check_df() {
  git fetch
  master=$(git rev-parse $BRANCH)
  remote=$(git rev-parse origin $BRANCH)

  if [[ $master == $remote ]]; then
    echo -e "[$(date)] Nothing to do!!! 😫"
    exit 0
  fi
}