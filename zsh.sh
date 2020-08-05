for f in "$@"
do
    echo $f
    if [ -f $f ]; then
        zip "$(dirname $f)/$(basename $f)_$(date +"%Y%m%d%H%M%S").zip" "$f"
    fi
    if [ -d $f ]; then
        zip -r "$(dirname $f)/$(basename $f)_$(date +"%Y%m%d%H%M%S").zip" "$f/"
    fi
done