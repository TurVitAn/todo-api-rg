

# Group Authorize


## Sessions [/sign_out]


### Create a session [POST /v1/auth/sign_in]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth/sign_in`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczNzQ5MjAsInVzZXJfaWQiOjIzNCwidWlkIjoiNzA2MGQyODktZDY0OC00ZjhkLTg5YTItYjhjNjI5ZmQyYTgxIiwicnVpZCI6IjFhNjVkZjNkLTRjOTItNGE4MS1hYTRjLTdhMzYyODRlYTlkMCJ9.NC69clHbLtMUEALUnftQGTv9b23rB8m7wW93t9ZUUNU
            Content-Type: application/json

    + Body

            {
              "email": "joel@carrollbaumbach.biz",
              "password": "RmBJ62pHDBR"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "UrrG0300RPV+Krgc0g8NwyVFqzkbcLmYMgDq/+XbYzKdMv3HfcMtc/0PjeCV79Cw4RsIsUoai0FefTr7kP0gCw=="
            }

### Destroy a session [DELETE /v1/auth/sign_out]


+ Request returns http status success
**DELETE**&nbsp;&nbsp;`/v1/auth/sign_out`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczNzQ5MjAsInVzZXJfaWQiOjIzNSwidWlkIjoiNzUyZjc5ZGYtYTE2ZS00ZGE5LWFmYWUtMTYwYTczZmFlY2RhIiwicnVpZCI6IjFjNmQzMWIxLWQ2M2ItNGVhNC1hODgzLTRhMzhkZDgxZjY3ZCJ9.IL4ExJmlhgZe-QIIndy1WBlFa34psvyC_LR-YuxlbJM
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            "ok"

# Group Projects


## Projects [/projects]


### Get projects [GET /v1/projects]


+ Request returns status ok
**GET**&nbsp;&nbsp;`/v1/projects`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczNzQ5MjAsInVzZXJfaWQiOjIyNSwidWlkIjoiZWRhYWMyYTUtYzQxNS00YjgwLTk5MzYtN2JhOTI2YjIzNzcyIiwicnVpZCI6ImUyMjJkNTgxLTVjZDMtNDQ2My04OWIzLWNjZjcyYmUwZjhiNSJ9.ozIavnG0il7bpPJjwF85OTSSOaOVNeVQ5QTE-vMOsEg
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": [
            
              ]
            }

+ Request returns unauthorized status
**GET**&nbsp;&nbsp;`/v1/projects`

    + Headers

            Accept: application/json
            Content-Type: application/json

+ Response 401

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not authorized"
            }

### Create a project [POST /v1/projects]


+ Request create project
**POST**&nbsp;&nbsp;`/v1/projects`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczNzQ5MjAsInVzZXJfaWQiOjIyNiwidWlkIjoiOTdlZDYyN2UtMjU2Mi00ZDc5LTg3YTQtODZmNzkzODYxZmMwIiwicnVpZCI6IjU4YjFkNzgxLTI4NjctNGQ5NS04MjRlLTBkZWY0YTI1ZTc4MSJ9.ylc22RBK6wazZorTdnw6B4jymXubWSeclwuKQ95LUeY
            Content-Type: application/json

    + Body

            {
              "name": "tempora"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "88",
                "type": "project",
                "attributes": {
                  "name": "tempora"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "226",
                      "type": "user"
                    }
                  }
                }
              }
            }

+ Request create project with wrong params
**POST**&nbsp;&nbsp;`/v1/projects`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczNzQ5MjAsInVzZXJfaWQiOjIyNywidWlkIjoiZTM3OTFjNDQtZThmNS00Yjc1LWFkZGUtNTNhNDNjMDkxMGRlIiwicnVpZCI6IjRjMzk4MjBjLTNmZjQtNDVkNi1hYWZjLTZmZTVjNWYwNGQ1MCJ9.zwQEMYJZBxqEeA5G3FByqkVyZsyod_UUzX_wzXos-uk
            Content-Type: application/json

    + Body

            {
              "name": ""
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "data/attributes/name"
                  },
                  "detail": [
                    "can't be blank"
                  ]
                }
              ]
            }

### Update a project [PUT /v1/projects/{id}]

+ Parameters
    + id: `89` (number, required)

+ Request update project
**PUT**&nbsp;&nbsp;`/v1/projects/89`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczNzQ5MjAsInVzZXJfaWQiOjIyOCwidWlkIjoiZjE5MjkwODctOTJkNC00ZWJhLWFjODMtZDBjMDY3MThmYTJkIiwicnVpZCI6ImQ0YzVjZTE2LTk1OTktNDkyMC04Njk2LTgzMTI5ODRkZmM1OCJ9.E8IwOJAjAS4ozQFJg3eX5WqVYKWlm6uyRUVjoKoyxbU
            Content-Type: application/json

    + Body

            {
              "name": "placeat"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "89",
                "type": "project",
                "attributes": {
                  "name": "beatae"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "228",
                      "type": "user"
                    }
                  }
                }
              }
            }

+ Request not update project 422
**PUT**&nbsp;&nbsp;`/v1/projects/90`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczNzQ5MjAsInVzZXJfaWQiOjIyOSwidWlkIjoiYzM5ODRjNDktOTg5My00YjE4LWIyMGQtMTc3YjI3ZjczZjRlIiwicnVpZCI6IjI0N2JjY2U1LWFiZTQtNDEwMi1iMDBkLTMyNzliODNkMzQ3NSJ9.itpRWAKaKHEovoFW7Di6P4_w5sVG5YUFgm95cFy80_w
            Content-Type: application/json

    + Body

            {
              "name": ""
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "data/attributes/name"
                  },
                  "detail": [
                    "can't be blank"
                  ]
                }
              ]
            }

+ Request not update project
**PUT**&nbsp;&nbsp;`/v1/projects/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczNzQ5MjAsInVzZXJfaWQiOjIzMCwidWlkIjoiM2RjYmY2YTEtNWU3Ny00MTE4LTlmYjEtOGQ1MWQyY2VmNzA1IiwicnVpZCI6IjEzOTQ1YWRlLWY5ODEtNDUwYy1hYWIwLWE0ZTk0NjFkNzAzZSJ9.K8In0bgXmwGihzTDqLY_hGmQEXIUd9JxtgyYQvp2QUg
            Content-Type: application/json

    + Body

            {
              "name": "eveniet"
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

### Destroy a project [DELETE /v1/projects/{id}]

+ Parameters
    + id: `91` (number, required)

+ Request delete project
**DELETE**&nbsp;&nbsp;`/v1/projects/91`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczNzQ5MjAsInVzZXJfaWQiOjIzMSwidWlkIjoiNDJiODI3ZDAtOWJiZi00MDA4LTk1NTUtZjM1MzFkOTEwZTVkIiwicnVpZCI6ImQ4YzA1NDkxLTcyNTUtNGZhNi1iYWRhLWFhZDIyMTIzNmQxMiJ9.qobT55lrXMZXzwIeRbmYBhg-ahWtZHSI50TZ__P6BBA
            Content-Type: application/json

+ Response 204

+ Request not found
**DELETE**&nbsp;&nbsp;`/v1/projects/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczNzQ5MjAsInVzZXJfaWQiOjIzMiwidWlkIjoiOWFjOGUyNWQtMGVlMi00YTkzLWFjZjUtOWQwYTNmYzM4YTI3IiwicnVpZCI6ImZmZjYxMzg2LTZkMGYtNDJhNC1iMjQxLWIxZTUwMTNhNmVkNCJ9.xEmhQUylvXpuRFD6Qs1kgyn5m76oUdfoqpVHbkHBvjE
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

# Group Registrations


## Users [/]


### Create a user [POST /v1/auth]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth`

    + Headers

            Accept: application/json
            Content-Type: application/json

    + Body

            {
              "email": "carolyn_lehner@pfannerstill.info",
              "password": "4ddqeHPIolqSPX",
              "password_confirmation": "4ddqeHPIolqSPX"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "g6SACRKEHbmo4PM0tx2sPj96WjzJYF5tBZCqNVtQ70yjXi7ZWRr9km2YTWSEtU6UjryTi52pW/zvYRtMR+jwCA=="
            }
