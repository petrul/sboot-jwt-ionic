export JWTCLIENT=`curl -X POST "http://localhost:8080/users/signin?username=client&password=client" -H  "accept: */*"`
export JWTADMIN=`curl -X POST "http://localhost:8080/users/signin?username=admin&password=admin" -H  "accept: */*"`
echo "client jwt: $JWTCLIENT"
echo "admin jwt: $JWTADMIN"

#JWTCLIENT=
#JWTADMIN=
curl http://localhost:8080  -H 'Accept:text/html'
echo
curl http://localhost:8080/client  -H 'Accept:text/html' -H "Authorization: Bearer $JWTCLIENT"
echo
curl http://localhost:8080/admin  -H 'Accept:text/html' -H "Authorization: Bearer $JWTADMIN"
echo
curl http://localhost:8080/clientOrAdmin  -H 'Accept:text/html' -H "Authorization: Bearer $JWTCLIENT"
echo
curl http://localhost:8080/clientOrAdmin  -H 'Accept:text/html' -H "Authorization: Bearer $JWTADMIN"
echo
curl http://localhost:8080/client2  -H 'Accept:text/html' -H "Authorization: Bearer $JWTCLIENT"


