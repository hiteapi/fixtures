body='{
"request": {
"branch":"master"
}}'

repositories=(react nodejs nodejs_restify)

for i in "${repositories[@]}"
do
    url="https://api.travis-ci.com/repo/hiteapi%2F$i/requests"
    curl -s -X POST \
	 -H "Content-Type: application/json" \
	 -H "Accept: application/json" \
	 -H "Travis-API-Version: 3" \
	 -H "Authorization: token ${TRAVIS_TOKEN}" \
	 -d "$body" \
	 $url
done
