#!/bin/sh
for ii in 1 2 3; do
	curl "https://api.github.com/orgs/awsdocs/repos?page=$ii&per_page=100" | jq -r '.[].git_url' | grep -v \\.github | xargs -n1 git submodule add
done
