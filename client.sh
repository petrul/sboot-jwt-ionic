export BASEPATH="api/home"
export JWTCLIENT=`curl -X POST "http://localhost:8080/api/users/signin?username=client&password=client" -H  "accept: */*"`
echo "client jwt: $JWTCLIENT"
export JWTADMIN=`curl -X POST "http://localhost:8080/api/users/signin?username=admin&password=admin" -H  "accept: */*"`
echo "admin jwt: $JWTADMIN"

curl http://localhost:8080/$BASEPATH/any  -H 'Accept:text/html'
echo
curl http://localhost:8080/$BASEPATH/client  -H 'Accept:text/html' -H "Authorization: Bearer $JWTCLIENT"
echo
curl http://localhost:8080/$BASEPATH/admin  -H 'Accept:text/html' -H "Authorization: Bearer $JWTADMIN"
echo
curl http://localhost:8080/$BASEPATH/clientOrAdmin  -H 'Accept:text/html' -H "Authorization: Bearer $JWTCLIENT"
echo
curl http://localhost:8080/$BASEPATH/clientOrAdmin  -H 'Accept:text/html' -H "Authorization: Bearer $JWTADMIN"
echo
curl http://localhost:8080/$BASEPATH/client2  -H 'Accept:text/html' -H "Authorization: Bearer $JWTCLIENT"
