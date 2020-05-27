#!/bin/bash

# repos=( 
#   "/c/projects/project-1"
#   "/c/projects/project-2"
#   "/c/projects/project-3"
# )

repos=( 
  "https://github.com/cheerlavamsi/ansible.git"
)

echo ""
echo "Getting latest for" ${#repos[@]} "repositories using pull --rebase"

for repo in "${repos[@]}"
do
  echo ""
  echo "****** Getting latest for" ${repo} "******"
#   cd "${repo}"
  git pull --rebase
  echo "******************************************"
done