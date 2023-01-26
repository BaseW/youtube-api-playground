if [ $# -eq 0 ]; then
  echo "Usage: $0 <search_query>"
  exit 1
fi

SEARCH_QUERY=$1

curl -s "https://www.googleapis.com/youtube/v3/search?q=$SEARCH_QUERY&part=id,snippet&type=channel&key=$GCP_API_KEY" \
  --header 'Accept: application/json' \
  --compressed
