
echo "address: $1 tx: $2"

curl https://api.blockcypher.com/v1/btc/main/txs/$2 > data.json

curl -X 'POST' https://proofofexistence.com/unconfirmed/UsblXqKxH8wzEdFPRUwru2xqCztrhJcJrxQWTR9fLI/$1 -H 'Content-type: application/json' -d '@data.json'