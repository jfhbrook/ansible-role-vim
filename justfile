set dotenv-load := true

sync:
  git ls-remote --exit-code upstream || git remote add upstream git@github.com:ctorgalson/ansible-role-vim
  BRANCH="$(git rev-parse --abbrev-ref HEAD)"; git checkout master && git pull --ff-only upstream master && git checkout main && git rebase master && git checkout "${BRANCH}"

