## README

App made from following "Build Great APIS with Grape
" tutorial http://www.sitepoint.com/build-great-apis-grape/

Syntax for doing post using curl:

```
curl -d "name=bob" -d "address=mumbai" -d "age=33" http://localhost:3000/api/v1/employee_data.json
```

instead of:

```
curl http://localhost:3000/api/v1/employee_data.json -d "name=jay;address=delhi;age=25"
```
which was from tutorial but didn't work for me. Kept on getting this error:
```
{"error":"address is missing, age is missing"}
```

This worked as well:

```
curl -XPOST -H "Content-Type: application/json" "localhost:3000/api/v1/employee_data" -d '
{
  "name": "Kate",
  "address": "London",
  "age": "42"
  }'
```

Get all employee data from API:
`http://localhost:3000/api/v1/employee_data.json`
