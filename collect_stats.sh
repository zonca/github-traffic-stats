die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "1 argument required, $# provided"

REPO=$1
DIRECTORY=`dirname $0`
cd $DIRECTORY
source tok.sh
mkdir -p $REPO
cd $REPO
gts "$USER:$TOK" $REPO 'save_csv' -o $ORG
git add .
git commit -m "update stats with cron"
git push
