Save Github traffic stats
=========================

## Rationale

See the blog post <https://zonca.dev/2021/10/monitor-github-traffic.html>

## Requirements

* [github-traffic-stats](https://github.com/nchah/github-traffic-stats)

## Setup

Rename `tok-sample.sh` to `tok.sh` and fill it in with a:

* [Github Access Token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/)
* Github username
* Github organization

## Run

Test it with:

    bash collect_data.sh repository_name

This should create a folder with the name of your repository, download the stats and commit them to the repository.

## Example output

See the `pysm` folder for example output

## Automate

Then create an entry in a user crontab with `crontab -e` with the content of `crontab.sh`

Specify as argument to `collect_data.sh` the repository name.
