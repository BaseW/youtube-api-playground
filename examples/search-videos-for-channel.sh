if [ $# -ne 2 ]; then
  echo "Usage: $0 <channel_id> <search_query>"
  exit 1
fi

CHANNEL_ID=$1
SEARCH_QUERY=$2

curl -s "https://www.googleapis.com/youtube/v3/search?q=$SEARCH_QUERY&channelId=$CHANNEL_ID&part=id,snippet&type=video&key=$GCP_API_KEY" \
  --header 'Accept: application/json' \
  --compressed
