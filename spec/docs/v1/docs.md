

# Group Authorize


## Sessions [/sign_out]


### Create a session [POST /v1/auth/sign_in]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth/sign_in`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjUxLCJ1aWQiOiJiZTUyNmYyNS02NzRjLTQwZTMtOGUwMy03MjFjYWM0M2RjMzQiLCJydWlkIjoiM2Q0NTAzZjYtNDQwMi00ZDIxLThlZmYtOGZlOTJmZjJiNzE1In0.9g9X5xOa_df0LZxtbkGb1WdtD6RAh9BSQ85drYB_NYA
            Content-Type: application/json

    + Body

            {
              "email": "shin.bahringer@grady.co.uk",
              "password": "nDHh3S5BniBESj0"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "SuflUKROm9IL/NL3Sh3VEhUX2OyjXcYK1G5azqy0Rv9duSncgEuQ1gLyV+NXfTVWHXGlpFwHp92965QG0Xc/ZA=="
            }

### Destroy a session [DELETE /v1/auth/sign_out]


+ Request returns http status success
**DELETE**&nbsp;&nbsp;`/v1/auth/sign_out`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjUyLCJ1aWQiOiI0N2E4NjI5MS1jYWNjLTRhNTgtYTA5ZC0yNDFkMTlkNzU4NzciLCJydWlkIjoiNzYyZmVhNzYtMzJkMC00YTMyLTkwYzctNzU2YWEzMzBiYjU4In0.7P4dz2T7duvXQBkfGSDO2a0UAKpbkj3mbaWKiMP1ZKE
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjQyLCJ1aWQiOiJlNDJhYTZiYS04N2MwLTQ4YjUtOGJiYy01ZmIzNDk3ODNjMTYiLCJydWlkIjoiZjgxYTZlYTgtM2I1ZC00ZjUzLWFlMTEtMDU5ZjRjZjNlY2Y1In0._wWZBuRwGI-5Wa6cq9R8o3kbOtPO27a7MCr7B8qBJqI
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjQzLCJ1aWQiOiJiNjZjZGQwOC1kNjdmLTQ4OTEtODM5NS0yNmRjYTY2ZGZjZDAiLCJydWlkIjoiNDk1Njc0MWYtYWJjMi00ZmRhLWIxNmYtNzU3YWJlOWRhNGRiIn0.wDdzFXowbz9stnSLMsXQDoO46ml2BLN4A6qOL7N41nI
            Content-Type: application/json

    + Body

            {
              "name": "amet"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "32",
                "type": "project",
                "attributes": {
                  "name": "amet"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "43",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request create project with wrong params
**POST**&nbsp;&nbsp;`/v1/projects`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjQ0LCJ1aWQiOiJjMDA5MTlmYy1mMTA1LTQwNWEtYjc2Zi04OWQ1NzZmZmM4ZTUiLCJydWlkIjoiMDJmMDcyZDctZmU4Ny00MzFjLTlmMTQtMTczOWZjYTBjYjFlIn0.cqjXBdFwB8MHDLFGjEXSsMeKZT2JERuT2MfHFm0wq7c
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
    + id: `33` (number, required)

+ Request update project
**PUT**&nbsp;&nbsp;`/v1/projects/33`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjQ1LCJ1aWQiOiJkYTU3YWZjZi05NGIyLTQ1ODAtOGI0MS1iYzk0NGViZWM4NTIiLCJydWlkIjoiODQxMGMzZWMtYjhkNi00NThhLWFiYWYtYmU2NzcxN2ZkMzc2In0.-RPeuYwpWArN7UyEz_YTpCLJM0WFmuOwQLjKdZPZj6k
            Content-Type: application/json

    + Body

            {
              "name": "occaecati"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "33",
                "type": "project",
                "attributes": {
                  "name": "dolorem"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "45",
                      "type": "user"
                    }
                  },
                  "tasks": {
                    "data": [
            
                    ]
                  }
                }
              }
            }

+ Request not update project 422
**PUT**&nbsp;&nbsp;`/v1/projects/34`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjQ2LCJ1aWQiOiJlYzFmZjBmNy01NWU2LTQwZmMtOTcyYy00ZjhiZjM0N2E0YTciLCJydWlkIjoiMDBlN2IwZjYtZGQ2ZC00YjM3LWE3MmUtMDNmYjViNjUyZWI1In0.cGXZ85uVhSoaFihg9nr35jATWFKryFgB2BbDXGvlNUc
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjQ3LCJ1aWQiOiIxN2Q2NjI0MC1iZjJhLTQ1ZTktYjAyNS0zYzc5ZjA4ZDlkOTUiLCJydWlkIjoiNjllZjI4NDEtMmUxYS00YzZkLWI3OTQtNGEwNGEwMzYzY2U3In0.mxrO5z9Zn-yJGhaaGIGa-9PfXHO9qGjAdQ745LmArf8
            Content-Type: application/json

    + Body

            {
              "name": "adipisci"
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
    + id: `35` (number, required)

+ Request delete project
**DELETE**&nbsp;&nbsp;`/v1/projects/35`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjQ4LCJ1aWQiOiJmMjA5M2M4MS1jZWEwLTQ5OTUtOGE2Yi1kODA3YzBiNTk4ZTUiLCJydWlkIjoiOTZmNjU1MzEtNjY4ZC00OTk2LWI5MTMtOTIyYzU5MzljY2E2In0.5ecXK4lSr-0aMyoTfgicvhRVABoSro0SVizW1kZfqyQ
            Content-Type: application/json

+ Response 204

+ Request not found
**DELETE**&nbsp;&nbsp;`/v1/projects/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjQ5LCJ1aWQiOiIzYmU1MmRlNy0wYWI2LTRiZWYtYmYxZS0xYTkwMmZkZjE0YWUiLCJydWlkIjoiYWVmNjYzMmYtMzg3ZS00ZTMyLTk4MzgtYmRlMWM0ZTg0ODYxIn0.3xzAqJwlTYYQBWF89rYHeSg5bbQxbj4_8JWi41HNC-M
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
              "email": "shawnda_mohr@predovic.ca",
              "password": "nO91eE0e5",
              "password_confirmation": "nO91eE0e5"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "P7MlGau2ppaCXdD9SCzXhgTie/l3IkkSY1rPrZIT1oQUiId/wmnIc/pmMsN9JZjDrVhG8flh9gGqlkWUZjMxmA=="
            }

# Group Task::Comments


## Task::Comments [task/comment]


### Create a comment [POST /v1/tasks/{task_id}/comments]

+ Parameters
    + task_id: `26` (number, required)

+ Request create comment
**POST**&nbsp;&nbsp;`/v1/tasks/26/comments?id=26`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjM0LCJ1aWQiOiJkMWMyOTJjOC0yOWU0LTQzMjItOTA3Mi0wOTcxYjQwZDlhM2UiLCJydWlkIjoiMDlkNzBmMGQtZmE3NS00MDdkLWE4OGUtN2Q3YzVhYTQ3YzM1In0.GwvaOiRUyzhSUiCYLOoJz9hUDneHIz2slO9xcoaapps
            Content-Type: multipart/form-data; boundary=----------XnJLe9ZIbbGUYtzPQJ16u1

    + Body

            {
              "description": "vero",
              "image": {
                "filename": "default.jpg",
                "type": "text/plain",
                "name": "image",
                "tempfile": "#<File:0x000055beb80b75d0>",
                "head": "Content-Disposition: form-data; name=\"image\"; filename=\"default.jpg\"\r\nContent-Type: text/plain\r\nContent-Length: 130192\r\n"
              }
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "4",
                "type": "comment",
                "attributes": {
                  "description": "vero",
                  "image": {
                    "name": "image",
                    "record": {
                      "id": 4,
                      "description": "vero",
                      "task_id": 26,
                      "created_at": "2021-07-29T09:07:59.135Z",
                      "updated_at": "2021-07-29T09:07:59.168Z"
                    }
                  }
                },
                "relationships": {
                  "task": {
                    "data": {
                      "id": "26",
                      "type": "task"
                    }
                  }
                }
              }
            }

+ Request not create comment
**POST**&nbsp;&nbsp;`/v1/tasks/27/comments?id=27`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjM1LCJ1aWQiOiI2ZDAxZTk1YS04YmNhLTRmN2MtOThlNi1lZjU3MzY4MTZkZTEiLCJydWlkIjoiMDg2YTA2YTgtMGFlMC00ZDE0LWE0YjAtM2Y2MGJhOGE5NjY2In0.kED9mEAPvpxIFjQhsJHZcYcLWmZbFvZunXoCmbUwyIU
            Content-Type: application/json

    + Body

            {
              "description": ""
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "data/attributes/description"
                  },
                  "detail": [
                    "can't be blank"
                  ]
                }
              ]
            }

### Destroy a comment [DELETE /v1/comments/{id}]

+ Parameters
    + id: `5` (number, required)

+ Request destroy comment
**DELETE**&nbsp;&nbsp;`/v1/comments/5`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjM2LCJ1aWQiOiI4MzliOWY2OC0yNTRhLTRkMTMtYmY0OC1hNWIyODYwZTdkYTgiLCJydWlkIjoiYmJjNTVjZDctNTk4Ni00Y2UyLWI0YTUtOGQ1YzU4MmIzZTJmIn0.mKA_mhSZ6A2_sgcyYxmfJXDUuVtBWaqOjCgOFlUPNSk
            Content-Type: application/json

+ Response 204

+ Request not destroy comment
**DELETE**&nbsp;&nbsp;`/v1/comments/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjM3LCJ1aWQiOiJjYmExOGNkMS1kYjg3LTRjZjgtOWNmMy1kYjNiZGRlMDYyYjQiLCJydWlkIjoiZWMwZWJlMDAtOGE3Yi00OWQ5LTlhOTItZGEwYWVkMTY5NDU5In0.EnaS_mQHcAXu8Q6R1rH9vWOGRx7KREKC7b2lBt6obH4
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

# Group Tasks


## Position [/positions]


### Update task position [PUT /v1/positions/{id}]

+ Parameters
    + id: `31` (number, required)

+ Request task position up
**PUT**&nbsp;&nbsp;`/v1/positions/31`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjM4LCJ1aWQiOiI0MTdmMDlmOC0zMWE1LTQxYTMtOTcyOC05YTUwNmFhZWRmOGUiLCJydWlkIjoiNjJkOTJmNGYtNjQ0Ni00Nzg0LTk3MjItY2UxNjI1ZjZhMTJmIn0.srczdSzVCsJanmwd86yRnfK6NFPJ0D0CQqARAIRimTM
            Content-Type: application/json

    + Body

            {
              "position": "up"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "31",
                "type": "task",
                "attributes": {
                  "name": "fugit",
                  "deadline": "2021-07-30T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "28",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request task position down
**PUT**&nbsp;&nbsp;`/v1/positions/34`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjM5LCJ1aWQiOiI1ZGFmZTQwZS01YWI1LTQwZjktOWVhZS1kMDc0ZDlhNmJjMDkiLCJydWlkIjoiMmVkMGIyYjctYzdjMy00ODRiLTk3ZGItYzc4MGViNzQxMDMxIn0.fnhWDIb-o5SupWoQdXcQsyF6Q-e_WDsh2WoPFyF2pAs
            Content-Type: application/json

    + Body

            {
              "position": "down"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "34",
                "type": "task",
                "attributes": {
                  "name": "eveniet",
                  "deadline": "2021-07-30T00:00:00.000Z",
                  "status": false,
                  "position": 3
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "29",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request return 404
**PUT**&nbsp;&nbsp;`/v1/positions/5`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjQwLCJ1aWQiOiIyYWMzNjJkYS03YmU3LTRkODgtOTY4ZS1jOGJhMmY1NjRjM2YiLCJydWlkIjoiMzE5YWJmYWYtYzU5OS00OGQ3LWI5MDEtYzMxZjBlMDJkODIyIn0.P_j291UqPpMtNioQ9HdzCY_T-BWY705hC9ka6EAyVmM
            Content-Type: application/json

    + Body

            {
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

+ Request return 422
**PUT**&nbsp;&nbsp;`/v1/positions/40`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjQxLCJ1aWQiOiJhYjA1NDFhMy01MzA3LTQ5NGMtOTQwYi05YWMzNWQzNTgyYTAiLCJydWlkIjoiOWNhYTQ0M2ItYWY4MS00YTZiLThjNWMtZjI5ZjRlMjQ2ZDFiIn0.Uosdor9TsnAKJDDgjbyZcb8YBxPmUslQD_CjJSUubag
            Content-Type: application/json

    + Body

            {
              "position": "aperiam"
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "/v1/positions/40"
                  },
                  "detail": "Wrong position"
                }
              ]
            }

## Status [/statuses]


### Update task status [PATCH /v1/statuses/{id}]

+ Parameters
    + id: `42` (number, required)

+ Request when do complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/42`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjUzLCJ1aWQiOiI5NmFhYzkyOS0zZDEwLTQ5OTctOWVmNi05MTJlMWE3NGY0NjEiLCJydWlkIjoiNWJkYzkzZjctMWI1NS00OGFmLTkyM2ItNjdjY2IxMzY3MTliIn0.2B2ig-Y4WOVaSsUBP2kTmhDCfb4MEzC_l3rOadknB18
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "42",
                "type": "task",
                "attributes": {
                  "name": "sunt",
                  "deadline": "2021-07-30T00:00:00.000Z",
                  "status": true,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "37",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request when do not complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/43`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjU0LCJ1aWQiOiJkZjIzMmNhMS0yOGJkLTRhNDItOGY4NC1lZmRlYThiYjA1MWMiLCJydWlkIjoiNjYxNDI5N2UtMzAxOS00ZjIyLTk2MTUtODU3YmJiYWExMzAwIn0.dmT7gHZwfJZsvEjYR3Z6oBEhHchUJvuBVXIzv0PZQa8
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "43",
                "type": "task",
                "attributes": {
                  "name": "enim",
                  "deadline": "2021-07-30T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "38",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request fail complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyNzksInVzZXJfaWQiOjU1LCJ1aWQiOiIxNjUxYzExYi1kMjQ5LTRkMDktODEwYy02MGI3NGZlYTg5ZmEiLCJydWlkIjoiNmY3YTg1MWQtNGVkOC00ZmI4LWEyOTItNTdjNzE1OGViYjNkIn0.7D-C1UU7h2HbrBVAFcc9rYizLL7i5PhMA8WsGyXXb5s
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

## Tasks [/tasks]


### Create a task [POST /v1/projects/{project_id}/tasks]

+ Parameters
    + project_id: `40` (number, required)

+ Request create task
**POST**&nbsp;&nbsp;`/v1/projects/40/tasks?id=40`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyODAsInVzZXJfaWQiOjU3LCJ1aWQiOiI2ZjQwYTk5YS04NjJkLTRhYWUtYTk0ZC04MDllMWFiZjg4NTAiLCJydWlkIjoiMDJiNTA5ZmQtMmJjMS00YTI3LTk0ZjktY2FkMjIxNDYxOTNhIn0.koMSrZgJw9lSbfmciV92D783zuxxleSJY7YvE4R0_OE
            Content-Type: application/json

    + Body

            {
              "name": "officiis",
              "deadline": "2021-07-30T09:08:00.001Z"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "45",
                "type": "task",
                "attributes": {
                  "name": "officiis",
                  "deadline": "2021-07-30T09:08:00.001Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "40",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request not create task
**POST**&nbsp;&nbsp;`/v1/projects/0/tasks`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyODAsInVzZXJfaWQiOjU4LCJ1aWQiOiI3ZTU0YzRiYy1lMWU4LTQzNzAtODAxZC1mODg5ZWVmOTZmZGIiLCJydWlkIjoiYjE1ZmI2MDMtOTdmMC00MDcyLWFjMmUtMTU3NmFhZWJiYWRlIn0.0vrIG3oSqRuEPr8NamzskhHL5NW8X0n0vXCvolbdHhQ
            Content-Type: application/json

    + Body

            {
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

+ Request not create task
**POST**&nbsp;&nbsp;`/v1/projects/41/tasks?id=41`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyODAsInVzZXJfaWQiOjU5LCJ1aWQiOiJlZjE4NmUzZi05OWNlLTRjNjItYjI1Ny0wNGViOTlhMGMyNjgiLCJydWlkIjoiNTA1MzNiYzAtZTIyMi00ODkyLWJkOWMtMTM4MjRhZjYxMzc4In0.dx3JK_KCAYv0aDJI_vBjH-7byzz1fRqNAdD4GNfP4cY
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

### Update a task [PUT /v1/tasks/{id}]

+ Parameters
    + id: `46` (number, required)

+ Request update task
**PUT**&nbsp;&nbsp;`/v1/tasks/46`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyODAsInVzZXJfaWQiOjYwLCJ1aWQiOiI1ZmRmNTY4Mi0yODVjLTQwOGItOWIyMC1jZjJlYTZlNmUzNWUiLCJydWlkIjoiMzU0ZjkwNmEtYTg2My00YWIzLWFjMDUtMWE2NDdkNDU0MDMzIn0.sqAM-KAvRHRHNX8caIr9uP2uHCN3ZMrta0vfreEV6nU
            Content-Type: application/json

    + Body

            {
              "name": "aspernatur"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "46",
                "type": "task",
                "attributes": {
                  "name": "quia",
                  "deadline": "2021-07-30T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "42",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request not update task
**PUT**&nbsp;&nbsp;`/v1/tasks/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyODAsInVzZXJfaWQiOjYxLCJ1aWQiOiJkYTE1N2QxYi03MWE1LTQ3YmMtOGQyMy1mZDhjZDNiOGMxNWUiLCJydWlkIjoiYjIzYWY0ZWMtMzA4Zi00MDRhLWIwMjItMjZmYmRhOTQ1YjJkIn0.FPKPkKmBrVY0PNPdXwMZNKFJL9UeVgvDr4V0g3n2dTI
            Content-Type: application/json

    + Body

            {
            }

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }

+ Request not update task
**PUT**&nbsp;&nbsp;`/v1/tasks/48`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyODAsInVzZXJfaWQiOjYyLCJ1aWQiOiI3MDNlZjhkNC05N2NhLTRlYWItODVkMi0wZTVkOTJhMmIxNGEiLCJydWlkIjoiYTg0ODkyMmQtMTk0ZC00NTBhLTkzNGYtNTE1ODMwYWIyZGE3In0.s1zNS8_iPU2nFRDtR7o4Y2zr83HJOJ4nxm3qO3UuBpI
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

### Destroy a task [DELETE /v1/tasks/{id}]

+ Parameters
    + id: `49` (number, required)

+ Request success destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/49`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyODAsInVzZXJfaWQiOjYzLCJ1aWQiOiI1YjliYzkxNC00NGVlLTRiY2QtYTRjZi1iYTE3ZDAxMjA3N2QiLCJydWlkIjoiNmNjMDc3MmUtN2FlNC00MGJjLWExMjEtNDliOWY0YzA5NDkzIn0.JcPINX-3gv9GDDR_wrqigVSN_D_ttQPKRGb7xeF4AUo
            Content-Type: application/json

+ Response 204

+ Request failed destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc1NTMyODAsInVzZXJfaWQiOjY0LCJ1aWQiOiJjM2U3ODU3Yi00YTFlLTQ2ZDUtODQ0NC04MjJmMDE0NWY2YmUiLCJydWlkIjoiODhmY2ZhMzMtOWE4NC00YmQ1LTg2OWItMmE4MTQ1MWE1ZWIxIn0.Daes99lw-QClSqEvOLUv-AycpNaQbSlEOA3lnFIaZz4
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }
