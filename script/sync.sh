for f in files/*.pdf
do
  echo "Processing $f"
  PAGES=$(pdfinfo $f | grep Pages | sed 's/[^0-9]*//')
  NAME=${f##*/}
  NAME=${NAME%.pdf}
  if [ ! -f files/$NAME.json ]; then
    echo "{\"id\": $NAME, \"pages\": $PAGES}" > files/$NAME.json
  fi
done

echo "================================================="
echo "Done processing all files"
echo "Syncing with S3..."
echo "================================================="

aws s3 sync files/ s3://$BUCKET/$PREFIX --exclude "*" --include "*.json" --include "*.pdf" --acl public-read

echo "================================================="
echo "Done"
