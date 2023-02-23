# services
curl -i -X POST \
  --url http://localhost:8001/services/ \
  --data 'name=authy' \
  --data 'url=http://172.23.0.6:8081'

curl -i -X GET --url http://localhost:8001/services/

curl -X DELETE http://localhost:8001/services/e1573304-76c6-47cb-b7c5-971a21401adb


# routes
curl -X DELETE --url http://localhost:8001/services/authy/routes/fdfcbeca-aa18-49cf-9064-95543b848ff7

curl -i -X GET --url http://localhost:8001/services/authy/routes

curl -i -X POST \
  --url http://localhost:8001/services/authy/routes \
  --data 'name=create-user' \
  --data 'paths[]=/users' \
  --data 'methods[]=POST' \
  --data 'protocols[]=http' \
  --data 'protocols[]=https' \
  --data 'hosts[]=172.23.0.6:8081'


curl -i -X POST \
  --url http://localhost:8001/consumers/ \
  --data "username=myuser"


curl -i -X POST \
  --url http://localhost:8001/consumers/{consumer}/jwt \
  --data 'key=my-jwt' \
  --data 'secret=my-jwt-secret'


curl -d "username=user123&custom_id=SOME_CUSTOM_ID" http://localhost:8001/consumers/


curl -i -X POST \
  --url http://localhost:8001/consumers/ \
  --data 'username=user123' \
  --data 'custom_id=d174e00416ef4ce4aa2ee033b7208b0d'


curl -i -X POST --url http://localhost:8001/consumers/d174e00416ef4ce4aa2ee033b7208b0d/jwt
