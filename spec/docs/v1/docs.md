

# Group Authorize


## Sessions [/sign_out]


### Create a session [POST /v1/auth/sign_in]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth/sign_in`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcxOSwidWlkIjoiZTU0ZjQyOGEtNmUzMC00NDQzLThlMTItMjA3NjEzYWZiYjA4IiwicnVpZCI6IjkwODEyMjE5LTVmYTktNGJkYy05MjBjLTk5NWVmNjYxNzY3YyJ9.JZv_YLD5TaEJViU7Fg4nfeEcbf-zvcxFZlYNQkpLcXU
            Content-Type: application/json

    + Body

            {
              "email": "margart@moore.info",
              "password": "1beYbV83t"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "gehSS7cscjI9KDu8k24oP2uwbET7ZGdkADfgB4dpN8TDho3fC0lbQjQ2hTUPHihgZYCXDn11Q8EyBWnVltJAZA=="
            }

### Destroy a session [DELETE /v1/auth/sign_out]


+ Request returns http status success
**DELETE**&nbsp;&nbsp;`/v1/auth/sign_out`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcyMCwidWlkIjoiODg3MGFiOWYtMDM3Mi00YjUwLWEyODctYmFiMDI0NzVkOTFkIiwicnVpZCI6IjNhZWRlNjI0LWQ3ZTEtNGY4Ni04M2ViLTdkMjU0YmNmNTM5NyJ9.FZ4jFZtg23GbUbq0i4gr-zUxhW3owrtWRliQkC4b0so
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcxMCwidWlkIjoiNTRiOWZhODctMDYyYi00MzYwLWIxYTEtNDRlNDEwNmMwN2RhIiwicnVpZCI6IjQ1ZGE2YWZlLWY0NWMtNGFmZi1iODJjLWYwYzVmOTEwYWJkYyJ9.EcQjwsqH5rDoveVHCLqmlrRspIPo9GE1-viU4qXimWk
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcxMSwidWlkIjoiYTA0YzY3NTUtYTkxYy00OGY0LWE4MGItZmM4OTA2NDQ1ZjVkIiwicnVpZCI6ImI2NTJlNDM4LWM3ZDctNDI0Zi04ODliLWZmNjQyZWFkOTA3YSJ9.ojeTSLIGLnpPSixGnljYDtG-HJXfQsp8xa_x2p3IxKE
            Content-Type: application/json

    + Body

            {
              "name": "autem"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "508",
                "type": "project",
                "attributes": {
                  "name": "autem"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "711",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcxMiwidWlkIjoiYWUzYTg3YWEtYzAyYi00N2JlLTk0N2EtN2Q1NDk4ZDUyMzZkIiwicnVpZCI6IjkyNjhiY2Q2LWIzYTgtNGZlNC05MWEyLTJlYTg1MjM5M2YwZiJ9.wfe6hAG81AUAlBdiK0kLMCwlU0CNwm3HEO0BK4Jl9Gw
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
    + id: `509` (number, required)

+ Request update project
**PUT**&nbsp;&nbsp;`/v1/projects/509`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcxMywidWlkIjoiYzQxYTQ3ZDgtN2RkOS00NzFlLWIyNTktOGRlODRiYWM0OGVkIiwicnVpZCI6IjY1MzYwOTU1LTdkYjEtNDMwNy04OWVhLTY5N2YwZDIxZjVjZiJ9.lPSwkA4SlKQdg2k0SZxps2v0zgWzACf0BxQjMGyoyyA
            Content-Type: application/json

    + Body

            {
              "name": "pariatur"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "509",
                "type": "project",
                "attributes": {
                  "name": "doloremque"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "713",
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
**PUT**&nbsp;&nbsp;`/v1/projects/510`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcxNCwidWlkIjoiMDI0NDJlY2QtZGE5ZC00ZDQ3LThmMTctNWM0MjUzMTBkNGFiIiwicnVpZCI6ImM5OTM2YmMxLTRmNjAtNDBmMi05YmMxLWU4ZmU4Mzc4M2JlMyJ9.zH5vI1hZUDc5fZRFZLKItWXuJ-Q_GqbpI1W3_QlT-vE
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcxNSwidWlkIjoiNjVjODRjYjQtZDY1Ny00ZTIwLTliMjAtOGIxMzlmZGE2NDAzIiwicnVpZCI6IjYzMzgwZTQ5LTQ0MzYtNGZlYS04MGE1LTc4OTAzNDAzMjBmNCJ9.y-s780yldS-siqtAdaFsAVtCrh8XhK_PlaxXxZMNN9Q
            Content-Type: application/json

    + Body

            {
              "name": "libero"
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
    + id: `511` (number, required)

+ Request delete project
**DELETE**&nbsp;&nbsp;`/v1/projects/511`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcxNiwidWlkIjoiODQyNGM3NzctOWQxYi00OTE0LWE2MTMtNzAyMGUxNmRhNGNkIiwicnVpZCI6ImUxMDAzZjQ1LWM2YjItNGRmZS1iMzdkLTJkMjk3YzE1MmQ4OCJ9.xwWE2EcKtF-uIKBRvtqOlSzKwvcGKxwOuzZSc7F7TN4
            Content-Type: application/json

+ Response 204

+ Request not found
**DELETE**&nbsp;&nbsp;`/v1/projects/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcxNywidWlkIjoiMTNlMzU5MjktYzU4My00NTVkLWIzMDUtMjA4YmQ5OWZmMzFiIiwicnVpZCI6Ijg0YmMxOTdjLWVkMjgtNDg4Yi05M2RiLWM3MGU2ODkzNzEyMiJ9.P9rkmgN601OLovLZRw3sUvdzrNi4d1Xnq9-CqKvheFM
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
              "email": "dori_ankunding@simonis.com",
              "password": "XpHCF0RfhJ1",
              "password_confirmation": "XpHCF0RfhJ1"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "dkrVt1g2shqvPu1huRthpPKwRAM32AanSPeAIi94LyxdnDVVAMFY2xn9KY1bbnlEvJUChdOqesDIn2Z7zvkbFw=="
            }

# Group Task::Comments


## Task::Comments [task/comment]


### Create a comment [POST /v1/tasks/{task_id}/comments]

+ Parameters
    + task_id: `550` (number, required)

+ Request create comment
**POST**&nbsp;&nbsp;`/v1/tasks/550/comments?id=550`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcwMiwidWlkIjoiMWY5Y2M5YmItYzMwOS00NDU5LWFkOWMtMTk3ZDk4NjRhMmYzIiwicnVpZCI6IjhhYjM2N2Q0LTk5NDktNDI4OS05OTkxLWZjNzg0Y2Q2ZGEwOCJ9.RuFNHm8BZOtRnIwke4rBD3XKoQybGhlSFhLAE47TEgY
            Content-Type: multipart/form-data; boundary=----------XnJLe9ZIbbGUYtzPQJ16u1

    + Body

            {
              "description": "sequi",
              "image": {
                "filename": "default.jpg",
                "type": "text/plain",
                "name": "image",
                "tempfile": "#<File:0x0000562da2f31350>",
                "head": "Content-Disposition: form-data; name=\"image\"; filename=\"default.jpg\"\r\nContent-Type: text/plain\r\nContent-Length: 130192\r\n"
              }
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "63",
                "type": "comment",
                "attributes": {
                  "description": "sequi",
                  "image": {
                    "name": "image",
                    "record": {
                      "id": 63,
                      "description": "sequi",
                      "task_id": 550,
                      "created_at": "2021-07-27T19:16:08.334Z",
                      "updated_at": "2021-07-27T19:16:08.362Z"
                    }
                  }
                },
                "relationships": {
                  "task": {
                    "data": {
                      "id": "550",
                      "type": "task"
                    }
                  }
                }
              }
            }

+ Request not create comment
**POST**&nbsp;&nbsp;`/v1/tasks/551/comments?id=551`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcwMywidWlkIjoiMzBmNGYxYmUtMGI3Mi00ODFmLTgxY2UtZTQ0OTJmOTFjNWQ1IiwicnVpZCI6IjIxNjk5MjUwLTUxNjctNDRkZi05MjBkLThiZjljZjEyNjM5ZiJ9.xzAY95zPGjdJAsAUktrmRqAq4WfwyqM5VUTqOjIW43w
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
    + id: `64` (number, required)

+ Request destroy comment
**DELETE**&nbsp;&nbsp;`/v1/comments/64`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcwNCwidWlkIjoiMTUzZGVhYTItNTU5YS00NjAxLTk4NTItYWVkODM0ODdlZGVhIiwicnVpZCI6ImI2ZTg2NzgyLTc0MmQtNGE0MS1hZDBkLTU1NTgzYTQ4ZDU4NCJ9.lsBoZscXvQ6C-nWk9aATkMaLMKBIPFUgvyAnFdtldfc
            Content-Type: application/json

+ Response 204

+ Request not destroy comment
**DELETE**&nbsp;&nbsp;`/v1/comments/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcwNSwidWlkIjoiOGQyNGQzN2YtMmY2NS00MWQ2LTgxN2ItNTY2ZDZmZDk4NDdhIiwicnVpZCI6ImYxN2Q4YzUyLTUwYjctNGM4NS04NDMxLTI2YzM1MWNhNzExZCJ9.mkG6pyQmj8ACfD8maiWSP8dCc6-tCyMFbDvdXEYcNlg
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
    + id: `555` (number, required)

+ Request task position up
**PUT**&nbsp;&nbsp;`/v1/positions/555`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcwNiwidWlkIjoiYWNkZTFkZjgtYWNkMS00NWI4LTgxMjctYzQzMTA4Y2I1NWI5IiwicnVpZCI6IjdhMDI0NzYzLWQxMjUtNDExYy04NzcxLWE5ZjNjOGUxNzViOCJ9.i9Rc_YiVQ_GNVLx0TWGatVo2Ype5WzIci4lRn5a5qC0
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
                "id": "555",
                "type": "task",
                "attributes": {
                  "name": "in",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "504",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request task position down
**PUT**&nbsp;&nbsp;`/v1/positions/558`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcwNywidWlkIjoiMmZiNzIxZDUtYWYxYy00ZjczLTlmZDEtNzdjOTVhYzk3YzQyIiwicnVpZCI6IjliNzU4OGRmLWEzZjEtNDM0Ny1hZDgzLTQ2YmNmYzQ0MDBlYiJ9.S2N0OerMLt52E8K5SJS3MyB2cO2bXx05KnDnIQth-fo
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
                "id": "558",
                "type": "task",
                "attributes": {
                  "name": "maxime",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 3
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "505",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcwOCwidWlkIjoiYWZiMDNlMTAtYmJhYS00ZDM1LWFmNWQtMDc3MDlkMjY4OWU0IiwicnVpZCI6ImFmYjhkZjJkLTNlYjMtNGQ4My1hMWZlLTIwZjI5NDcyODdmMiJ9.s3YhjqHIH3A0cDyZguYFKkcIHw_788KLu958BOrKZME
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
**PUT**&nbsp;&nbsp;`/v1/positions/564`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjgsInVzZXJfaWQiOjcwOSwidWlkIjoiNjk1OTQ4ODgtYjk5My00ZjJhLTg0NmYtMjcwNDc0YmRiNDcxIiwicnVpZCI6IjViZjM1ZjI4LWFjYzAtNDlkZi1hMzdlLTVlMGY3Y2Q2MWNlMCJ9.3hbR7NBgny6Bt4-Blc5Ac5_ec7b26sNgOOpn0UQAol0
            Content-Type: application/json

    + Body

            {
              "position": "hic"
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "/v1/positions/564"
                  },
                  "detail": "Wrong position"
                }
              ]
            }

## Status [/statuses]


### Update task status [PATCH /v1/statuses/{id}]

+ Parameters
    + id: `566` (number, required)

+ Request when do complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/566`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcyMSwidWlkIjoiOTFlNDBhYTMtMmNiYi00NTI2LTk2OTItOTc1ZWEwMDY2MmQxIiwicnVpZCI6ImM0Zjc0MGY1LTJmMGUtNDYwMy04ZjExLWRmYjk0OGZiMTc3NSJ9.xdA5u72EkXXDapnFutbnEDXyxIPxR3ZjIAJStYXmxZ0
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "566",
                "type": "task",
                "attributes": {
                  "name": "asperiores",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": true,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "513",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request when do not complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/567`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcyMiwidWlkIjoiNTc4YmRmNDgtMDQ0ZC00MjM1LThkMWMtNzc3ZmU0MmFlMjNhIiwicnVpZCI6IjczOTNjODA3LTBhODQtNDY2OC05YTVkLTNhMDY2NjU3MTA3OSJ9.WSpAMSrN-kNP9Ao_vPAtuy-olCsn1NE2ZhfUSx3uZLI
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "567",
                "type": "task",
                "attributes": {
                  "name": "aperiam",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "514",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcyMywidWlkIjoiYjQ1ZjVjYWEtYmM1NC00ZWFkLTg3YjYtMzMxYTcwNzUyMzk0IiwicnVpZCI6ImRmODY5ZDU1LTFiYmMtNDgzZC1iNTM4LTkwZmFmOGNkMjk0OSJ9.zVIa2JJg0zaTxHtmuPfamKXB6xDyNOHVrInSJIOb6BU
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
    + project_id: `516` (number, required)

+ Request create task
**POST**&nbsp;&nbsp;`/v1/projects/516/tasks?id=516`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcyNSwidWlkIjoiMzFiNTQzMWItNTQ2My00NDQ3LWIzODYtYTFmZDNiOTUxOWFlIiwicnVpZCI6IjM2MjcwNmZjLTMyZWQtNDk2MS04Y2Q0LTc5MjkwNGVhZjYwZCJ9.FemZ2Xym8jBFm9GRMlz3opnPQK06M_WoSWLvXSrkcU0
            Content-Type: application/json

    + Body

            {
              "name": "alias",
              "deadline": "2021-07-28T19:16:09.234Z"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "569",
                "type": "task",
                "attributes": {
                  "name": "alias",
                  "deadline": "2021-07-28T19:16:09.234Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "516",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcyNiwidWlkIjoiOWUxMGIwYWUtNTE5My00ZmY3LThhZGQtM2IxNDdhNWIwODcxIiwicnVpZCI6ImI2ZjhlMzllLTY1NzQtNGUxOC1hYTlhLTVjMDBmYzZjZTE4ZiJ9.n8pLfae1znuogzs9w_3MMzn2ccMFRVK69QQf1Q-Jjm0
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
**POST**&nbsp;&nbsp;`/v1/projects/517/tasks?id=517`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcyNywidWlkIjoiNTI3OTA4MzUtYTg3Zi00ZjJjLWEwMTktNTJhMDQxZjUyYjYyIiwicnVpZCI6ImZiMDMxNmY4LWRiZGMtNDRhZS04NDM0LWI2ZmUwZDIwMzJiZiJ9.XLAySIrIe-pZotddeD0tZvfCqRw7qIEzFYdsgzmVmws
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
    + id: `570` (number, required)

+ Request update task
**PUT**&nbsp;&nbsp;`/v1/tasks/570`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcyOCwidWlkIjoiOGJhMDU3YmUtZjAxZS00NTlmLTg1MTgtMTM0YmFhZmZkZGI5IiwicnVpZCI6ImM0MDY0YjQwLTIzOTktNDllMS1iN2M2LWRmZmJmYzI4N2Q1NSJ9.P5YmUkLfZvaPrg-F1SnvECGKZxv_Kml2UrFcr4c0x-s
            Content-Type: application/json

    + Body

            {
              "name": "neque"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "570",
                "type": "task",
                "attributes": {
                  "name": "iusto",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "518",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjcyOSwidWlkIjoiNzllYTc5ZDItMjZhYy00YTk1LThmODgtMzIzMTYzNzE3NjYxIiwicnVpZCI6IjAzMzJmZTI0LTFjMGEtNGI5Yi1hNzczLWRhZGMyZmNiYTJiOCJ9.3k365SU8NROsK6ayL7l9DeNU_unPQwBE6GDA8QF6kf0
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
**PUT**&nbsp;&nbsp;`/v1/tasks/572`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjczMCwidWlkIjoiYTY0YTgyZGYtM2Q5NS00NDFjLTk4MjEtNzUyZDY2NjZkYTEzIiwicnVpZCI6IjcyMGY4MGQyLTYzMWUtNDc1ZS05YjA1LWVlMGFiNTczMDYxZSJ9.lwwV-dDpRH4PiriGP-ZTlK3ByNsXdDR_ROus0zld4hw
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
    + id: `573` (number, required)

+ Request success destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/573`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjczMSwidWlkIjoiOThlN2U0ZGUtZDE1Ni00ZTk1LWFhYjItYjBjOTUwNGUxY2Q1IiwicnVpZCI6IjJkNGE0YWJlLWY1MTUtNGE1YS04MTNjLWE4Y2Y0NmZjNzYxNSJ9.J7oSBhT7Y56dp9ZY1Y1byofVEphXTvYWPNPu3NZpL94
            Content-Type: application/json

+ Response 204

+ Request failed destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2Mjc0MTY5NjksInVzZXJfaWQiOjczMiwidWlkIjoiNDIwZmFkYmQtYTdiZi00ZTdiLTk4YzktNjg5OGFhN2YxMDVkIiwicnVpZCI6IjdkNGQ5ZDJhLTAxZTEtNDE0NC1iNTNhLTRhY2I0NzUxYmQ2OCJ9.nUgqWWrxrDzPG3qtvrMJWUwGqlMBKt1_DXmTnliaJsY
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }
