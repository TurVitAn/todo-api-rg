

# Group Authorize


## Sessions [/sign_out]


### Create a session [POST /v1/auth/sign_in]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth/sign_in`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjg3LCJ1aWQiOiIyZGQ4NjE0NC1lNGE0LTQxMmUtYTgwYy1lYmNmOGE3ZWIwMGMiLCJydWlkIjoiOGNlNTg5NjUtNmJhNC00MzMwLWEzNWEtY2JjYzM5MjYyMWU0In0.fw_PAWh3Ib7Vi1b7JFHT3NLcd_R1YZWmRurKPP1mT-w
            Content-Type: application/json

    + Body

            {
              "email": "phoebe@binsroob.biz",
              "password": "ECf4eFdpKX0Qa"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "u5B6IXZ2b6KCkmp/nZAYeEeJu8Eppb46xVceC70yN/rDzpwZZpcAY6hzypmbFbpjtYI7hVNhTdPp47pUnpy/jw=="
            }

### Destroy a session [DELETE /v1/auth/sign_out]


+ Request returns http status success
**DELETE**&nbsp;&nbsp;`/v1/auth/sign_out`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjg4LCJ1aWQiOiJiYzE2Njk3Yi0xMmUxLTRiYTctOTU3Ni01MDE2ODExM2YxZTciLCJydWlkIjoiMjcwNmU2NDctMWY5NS00NmVlLWE2NzQtN2VlYTQ3MTIwNmNiIn0.bytkgrBiJV3Jm3lzFURqE5C_Wsi5dQV86ERYa4dCyPo
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjc4LCJ1aWQiOiI2OTk4YjczNC0wMDFjLTQxOTgtODJmNy0wMTdiZWM1M2Q5Y2MiLCJydWlkIjoiN2JhZjUzZGMtY2VkOC00Mjg3LWE4NDktM2EzNmQ3ZmIyYzlhIn0.Mw3bawT7N2klWhcHSfewl9jvM2TDKYRi7PM4FaRC55s
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjc5LCJ1aWQiOiJkYTc1YTczZS00YzgwLTRjYWUtOTg0YS0wNmFjMTc3MzZkYTEiLCJydWlkIjoiZTFjNjZmOTYtNGQ2My00ZGMyLTk2YWQtNDAyOGVjMmJlZDNkIn0.1phOs9t4zhdgjSRIJEZtvFbXyko-29pUCQdQEmk5bpI
            Content-Type: application/json

    + Body

            {
              "name": "sed"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "52",
                "type": "project",
                "attributes": {
                  "name": "sed"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "79",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjgwLCJ1aWQiOiJiOWRkN2VkMi1lNDFlLTQ2ZDEtYTAyNS1lMzFiYzZkYzdlYTciLCJydWlkIjoiZmZiNjEyNzctMzE1OC00MTdjLThhODQtMWUzNzg3NGZhMzgyIn0.cgPKHqdnd7cU_jOdAgBWpIt74f-ECTCF4g121djqdXE
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
    + id: `53` (number, required)

+ Request update project
**PUT**&nbsp;&nbsp;`/v1/projects/53`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjgxLCJ1aWQiOiI3MzA1NDA0Ny03NWU3LTQ4NzAtOGE1OS02NjczMzQ4ODQwYTEiLCJydWlkIjoiZjQ1M2VlMTktMzc0OS00ZWRmLWFkZDgtZTkzNGE1MDNjMjVkIn0.1QKAptkRpYI89eC0CMV-4LmxnUCxsGO0D9o8ymEV-9U
            Content-Type: application/json

    + Body

            {
              "name": "consequuntur"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "53",
                "type": "project",
                "attributes": {
                  "name": "nulla"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "81",
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
**PUT**&nbsp;&nbsp;`/v1/projects/54`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjgyLCJ1aWQiOiI2ZThjOTM4MS1hY2I0LTQ0NzItODZkOS05ZmE1N2ZmY2NhMTMiLCJydWlkIjoiNWE3Y2FlMWYtYzYxNy00OGM5LTg1ZTQtYjVlOWU0YjdlOTljIn0.28UOtkEVyDR_vbRoYbW8R6HTLikS5v_zH7MXdBPf7PQ
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjgzLCJ1aWQiOiJhYzUzOGI5Yi0zZGNlLTRlNzktYmJjYy04NGMwODdhZWMzNGUiLCJydWlkIjoiNzYxMzQ3ZTYtYWUxNS00ZTI3LWE2ZDEtMWIxMWJiMWEzNTgzIn0.APomeibrRQW4iiQdCDE5CMrxnkM-1YkcjURNHpeQtL4
            Content-Type: application/json

    + Body

            {
              "name": "sapiente"
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
    + id: `55` (number, required)

+ Request delete project
**DELETE**&nbsp;&nbsp;`/v1/projects/55`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjg0LCJ1aWQiOiJkOGQyYjk4Yi1hMzdlLTRiNDItOTE0Yy1kMjkyZGJkNjg4ODUiLCJydWlkIjoiN2E5ZGUwZTUtZWRlZi00NzBmLThmYmQtYTJjZGE1NzcyYTE1In0.PQ6vuFG-oSQP7njmJrOr7EYi_D8rHWnQoyKJdYeF10Q
            Content-Type: application/json

+ Response 204

+ Request not found
**DELETE**&nbsp;&nbsp;`/v1/projects/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjg1LCJ1aWQiOiJhOTExZWYzYi02YjI1LTRhN2QtOGQ0Yy1kYjVjYjA1MTgzNzUiLCJydWlkIjoiZTQ0YTE1ZjAtNjc5Mi00Yzc3LWIwZjEtNWE2MGU3NzE5MmYyIn0.9fcWpalIo9OnQ-v6Ey_QQBlECQ37TwNFr4Z7WE_KWck
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
              "email": "eartha@hilpert.us",
              "password": "QRf4o7du",
              "password_confirmation": "QRf4o7du"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "qKeQfzZy9WY52eQmCNcwiWqaGxw46Uc1qVkAGMV+ZenCIKwuqzhVaUjxlUsvkRtA71aNJK5w0yRxJqh4WzHUDg=="
            }

# Group Tasks


## Position [/positions]


### Update task position [PUT /v1/positions/{id}]

+ Parameters
    + id: `65` (number, required)

+ Request task position up
**PUT**&nbsp;&nbsp;`/v1/positions/65`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjc0LCJ1aWQiOiJhZGM0Y2FkOS0wZmY4LTQ2YjgtODNiZC0zZTA1MTY3Njg2ZDIiLCJydWlkIjoiNjZjZmM1OTgtY2ZkOC00ZTI4LThlNzctYTI4N2UxYTUyYjdhIn0.__mtLbE4PurHsx6I3x3fxrMSIph619SrQa5dJPW5f70
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
                "id": "65",
                "type": "task",
                "attributes": {
                  "name": "quis",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "48",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request task position down
**PUT**&nbsp;&nbsp;`/v1/positions/68`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjc1LCJ1aWQiOiIxNjhmM2JmZC00MzI3LTQ1YzEtYTE2OC02NzJlMmQ0MGFlODkiLCJydWlkIjoiZDYwYjI1MGUtNzFlZi00MTNkLTkxZTgtOTdjNTYwNzg0ZDVlIn0.zKycH2USujdxNksVkEMYp8XBEwp_QXCvRfVNDhJYHyc
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
                "id": "68",
                "type": "task",
                "attributes": {
                  "name": "atque",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 3
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "49",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjc2LCJ1aWQiOiIyZDgxNTE3ZC02YjhmLTQwZjQtYWIxZC1lZGVlNzc5MTE4NmYiLCJydWlkIjoiMzg0ZjNkZDctNWExYy00YmRlLWIxMWItMWEyOTBlMzQxMjFiIn0.X8vKUMz3pai-DaWqllirTGuKVsy-ydd7IniUo-fte5E
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
**PUT**&nbsp;&nbsp;`/v1/positions/74`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDcsInVzZXJfaWQiOjc3LCJ1aWQiOiIyMzIxYmE3NC0wYTZiLTRhOWUtYWM2Yy1kMmE4MmFlNDA1YTIiLCJydWlkIjoiNWE5OTU4NTQtYmNjNi00MzIzLWI5ZGItMTI2ZThjNDAxYWI0In0.QvRV6OeZI8PZ4uC4vY4Zy-D1KgXhIpbXC4UOC1NAHvI
            Content-Type: application/json

    + Body

            {
              "position": "qui"
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "/v1/positions/74"
                  },
                  "detail": "Wrong position"
                }
              ]
            }

## Status [/statuses]


### Update task status [PATCH /v1/statuses/{id}]

+ Parameters
    + id: `76` (number, required)

+ Request when do complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/76`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjg5LCJ1aWQiOiJkMzQ3NjU2NS03MDUzLTRhMmQtOTk3MS02OWVmMmRiMzQ2ODkiLCJydWlkIjoiOGNkNmYyYzMtZGUyZC00MDk0LWJkMTItNmE4ODk0Y2QwOTcyIn0.x8YhdcrbPJGTLFbLAJBcz-QI57T3m-GznzX9EDQLabo
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "76",
                "type": "task",
                "attributes": {
                  "name": "reprehenderit",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": true,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "57",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request when do not complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/77`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjkwLCJ1aWQiOiI5MTRmNDAxNC1kODljLTRmZjUtOWRhOC02YzZkMjQzZDZlM2UiLCJydWlkIjoiN2I2YzYwNTctZTMyZC00MDdkLWJiZTctY2M4MTU3OGYxN2Y5In0.XfKjLqTABAqllzW0ZlvkQpy8T1dtKChBtFl3zQOX1Ns
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "77",
                "type": "task",
                "attributes": {
                  "name": "perferendis",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "58",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjkxLCJ1aWQiOiIwNjM5NjcyMS0wMDY4LTQ1MDQtODk5MC0zY2QxMzBkNTRlNzEiLCJydWlkIjoiMzI3NTdkY2MtYjZiYi00ZjBjLWI1MzYtNzhiNDcyNzM4ODA2In0.utAqMgQIOMsWG7kmhltI49SBp6Q0bjk2p5ujPl40kMY
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
    + project_id: `60` (number, required)

+ Request create task
**POST**&nbsp;&nbsp;`/v1/projects/60/tasks?id=60`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjkzLCJ1aWQiOiIxZjMxMmQ5Ni00YmI1LTRjMzQtYjNjOC1lNzgzNGMyYWU0MTYiLCJydWlkIjoiMzZiNWM5N2EtYTQ1YS00MDc1LTk2YWMtYzJiZWFjNzI4ZmEwIn0.wkMCis_y58h2sPU8OeVhSUQcCSSuJeimQA2ew30ONg4
            Content-Type: application/json

    + Body

            {
              "name": "voluptate",
              "deadline": "2021-07-28T10:00:48.303Z"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "79",
                "type": "task",
                "attributes": {
                  "name": "voluptate",
                  "deadline": "2021-07-28T10:00:48.303Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "60",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjk0LCJ1aWQiOiJjNWIyYjNmNi1kNGVlLTRhNTYtOWM0MS02MmFiNWE0OTFiMzUiLCJydWlkIjoiNWRmY2MwYmUtNDVlMi00NTQ5LWE5ZmEtOTMzODE2MjgxMWU3In0.9aGp4F0CxC4f181grceSyoEjlWosxqpM76LEKPXx_t8
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
**POST**&nbsp;&nbsp;`/v1/projects/61/tasks?id=61`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjk1LCJ1aWQiOiJkZGFlNDZkMi01NTAwLTRiZWEtOTYyNS04YTYzODU1YjY3MmMiLCJydWlkIjoiN2I1ZDQ4NDAtNTAxZC00MzRjLWE2MGEtNjA2NTQ2NjY4ZmI1In0.4Q5_dEAz4Re7RD06KC3z8iuxEoysD657Pg97MY6hTKY
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
    + id: `80` (number, required)

+ Request update task
**PUT**&nbsp;&nbsp;`/v1/tasks/80`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjk2LCJ1aWQiOiI3MmM2OTQwOS05YzFjLTRlODItOTllMS04NjI2NDJjODJkNjQiLCJydWlkIjoiOTdhZjcyMDAtZDE3NS00Mzg3LTkxOTItMmZiOTY0NDI2MjFkIn0.-BciJZlXwfO0tSM-JWoYmTbZoLHU4uf5hFQYxJSiy0c
            Content-Type: application/json

    + Body

            {
              "name": "animi"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "80",
                "type": "task",
                "attributes": {
                  "name": "architecto",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "62",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjk3LCJ1aWQiOiIyMDg4MTIyZS05NzdlLTQyNjktYWQxYS01Yzg5ZTAyNWI0MWUiLCJydWlkIjoiZjJkNmNjNjUtNWU0Mi00MzJmLWExMGYtOWFhMGNmYTAxMjNlIn0.NNeuNfjcd865gMTsmTvJypww1yKGuahYk8USPqHp_ZU
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
**PUT**&nbsp;&nbsp;`/v1/tasks/82`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjk4LCJ1aWQiOiI1ODhkZDUxYS05YmQ4LTQ4ZTctOGViMy0zOTgyYzNjMjE3NDEiLCJydWlkIjoiMDRkNWRiYjEtM2JlYi00NWJmLTk2ZWYtMGUwMGY0NGMzOGM3In0.ZVNlgk1g7_22g8uZfvuNAYo3Don3QlM41s5PghUY0_U
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
    + id: `83` (number, required)

+ Request success destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/83`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjk5LCJ1aWQiOiI0NDU3M2NiOC1mMDhjLTRiODUtOTY4My1jOGY1MTk2OTdmOWQiLCJydWlkIjoiY2U0M2IyNWItN2QyZS00NWQxLTllNjItMzQxZTYyMWViMWUyIn0.2L9Rfmtni8N34SzZQ-tp2uU8oX2SccAU9Vq4Oo9Gi4I
            Content-Type: application/json

+ Response 204

+ Request failed destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODM2NDgsInVzZXJfaWQiOjEwMCwidWlkIjoiOGI0ZjJlMjAtM2Q4YS00YTJjLWIwMzItMTI2YjlhNjIyYjJlIiwicnVpZCI6IjdiZWFiYjRjLTY1MmYtNDZhZS1hZTRmLTJhZWJkM2JlM2JmZiJ9.ZrFU1QbQgdO5J3Ph_pgLEvv1zslbShIyEqNytXhece8
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }
