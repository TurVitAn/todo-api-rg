

# Group Authorize


## Sessions [/sign_out]


### Create a session [POST /v1/auth/sign_in]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth/sign_in`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIwNywidWlkIjoiZDQ4YjRhOGQtMzI3Zi00MGI2LWFjNjAtYjdhOGNhNzg4NTg4IiwicnVpZCI6ImRjMjc3ZTc3LWYzMjQtNDI3NC04MjUwLTQ5M2NmYjRhNzkxYSJ9.l40OrTKLte1PcYWmtugKUwThsWFUnr3Qpad1Yp6z0XM
            Content-Type: application/json

    + Body

            {
              "email": "winford.hagenes@leffler.info",
              "password": "3Z2DGWKTSNLDeI"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "vt+A7W8PVtU0EI50ufHdYTOV7ER51jJRNvEpoMqM9276MCo1Ks9Pa+UUqHPKitOmvbk0QVI2OOAZ3y3z/Nzllw=="
            }

### Destroy a session [DELETE /v1/auth/sign_out]


+ Request returns http status success
**DELETE**&nbsp;&nbsp;`/v1/auth/sign_out`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIwOCwidWlkIjoiM2VmNmQ2MmUtYTU1ZC00Y2JmLTgwZmItNmY2ZTRjMDRmN2Y1IiwicnVpZCI6IjExODFlMjMyLTNkOTctNDNkOC04Yzk2LTVhZjQ4ODQyZjAxMiJ9.NQqwMZ9cT-HbIZbbxj8yeH1pt60FPU7RICHfDRatoQ8
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjE5OCwidWlkIjoiZmU2YmRmODctOGIyMy00YWIzLThkYTgtNWNlOWY0NTQwYWIyIiwicnVpZCI6IjU0YzhkMDEwLTBmMDYtNGU5OC04ZGE5LTBiNmMzNjNjNWI2MiJ9.s1QkFqWdc0ZGlSYwVAw4XJeeUw87QyKLZfqkIT0s0rI
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjE5OSwidWlkIjoiOGI3OTg4YjktYjYxOC00MTM3LWE0NGUtM2Y5YTVjMWQ1Mzg1IiwicnVpZCI6ImZkMWI2YmQyLTE4NWUtNGZkMS04MzQyLTNhMWQ3NWVhYTY1YyJ9.Kamg0Ey-UrsN7nWTrN0Hrbc8b2F_4JAURw6fkdgkUFU
            Content-Type: application/json

    + Body

            {
              "name": "at"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "139",
                "type": "project",
                "attributes": {
                  "name": "at"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "199",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIwMCwidWlkIjoiM2ZkYzRlZjEtOTA3MS00YzliLTkyOTEtMGYyZDc3NmYwOGMwIiwicnVpZCI6ImJkNGQ1ZDBlLWFkNDctNDAxZi05NGRlLTM5ZTFlYjUxZDViNSJ9.rJ5gBaxNGFOBAn8aWaC5WMtItwoAaluJjPobJeHLMrM
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
    + id: `140` (number, required)

+ Request update project
**PUT**&nbsp;&nbsp;`/v1/projects/140`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIwMSwidWlkIjoiNTIwZTdhNTUtMGYzZS00ZjQwLWE2MGEtNjM5ZGNlYjc0ZTJmIiwicnVpZCI6IjYzYzg3NWZiLTc0ODUtNGNhMy1iNTg5LTk0MzEyZTQ1OTg0MiJ9.Wnvrd3m_yz8B5UIpL0iwHFKuEylxnKwanc8eRtPtgBs
            Content-Type: application/json

    + Body

            {
              "name": "vel"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "140",
                "type": "project",
                "attributes": {
                  "name": "reprehenderit"
                },
                "relationships": {
                  "user": {
                    "data": {
                      "id": "201",
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
**PUT**&nbsp;&nbsp;`/v1/projects/141`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIwMiwidWlkIjoiMDhkZWMxZWMtY2JkZS00OGI1LWE0Y2EtYzA0MjMxNTRlZDJlIiwicnVpZCI6ImNkNTk2MzQ1LTRmZDItNDVjNy1hZDQ3LWY2OTBkYjA2NTVhZCJ9.xrm_GUWr3-B55Mgg9W73f3TFBTpTEP51kYnn9zbgOgg
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIwMywidWlkIjoiM2E2Zjk3YjUtZDc1MC00ZTNhLWJmMTEtZDUwMDA1NGQ2YmI1IiwicnVpZCI6Ijc1MGYzYTcwLTIyZGYtNDdkZC1hYjJjLTFiNzg4OGQwNzVlMCJ9.ZeTBPpl_BDq4d4uKZkOISir1VU-7CMcAGvFMBulubLI
            Content-Type: application/json

    + Body

            {
              "name": "totam"
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
    + id: `142` (number, required)

+ Request delete project
**DELETE**&nbsp;&nbsp;`/v1/projects/142`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIwNCwidWlkIjoiYTlkODk3ZGYtNTVmMi00NDMyLWI1ZDMtYzQ1MjExZmU2ZTcwIiwicnVpZCI6IjkzODgyMmY3LTY0MTYtNDNmMS04NDg0LWRiMzBhZDcwY2MxZCJ9.TLukJgA09YHKOZVa_6LAPvF-nKpksk_9hw7tnu8inlY
            Content-Type: application/json

+ Response 204

+ Request not found
**DELETE**&nbsp;&nbsp;`/v1/projects/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIwNSwidWlkIjoiZTkzODQxMDktZjI2Yy00OTRiLThlMWQtMzU3Zjk4NjIyNTI1IiwicnVpZCI6ImFlN2M2ODgwLTUzMzMtNGIwZi04MTVhLTM5OWUxMTM2ZDQ3MiJ9.Q4bUMMj35udYgjsaPll_L4_2FTiBdOcjfnGmqyahxzQ
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
              "email": "javier.rohan@bayer.name",
              "password": "uNDWP81qmb",
              "password_confirmation": "uNDWP81qmb"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "43H6tMMwh8Cpd8B8iayUzcXmqXwjVf77T9G2L5zN6TgMH6Aqf05rlaO3CI7HY4VO/P7xuGn6+IPb8IAt7LtozQ=="
            }

# Group Task::Comments


## Task::Comments [task/comment]


### Create a comment [POST /v1/tasks/{task_id}/comments]

+ Parameters
    + task_id: `143` (number, required)

+ Request create comment
**POST**&nbsp;&nbsp;`/v1/tasks/143/comments?id=143`

    + Headers

            Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODYsInVzZXJfaWQiOjE5MCwidWlkIjoiMzkzOWQxMDQtZGExOC00YTA4LTgyMmMtNDAxY2FkYjk2ZmQ2IiwicnVpZCI6IjE2YzJiNmY4LWIxMjMtNGNmMS1iNWUzLWI2MjZhMGRiZWU5YSJ9.eTJzqvaEEH_WhEMqbp0_BVKb1RBeQ402uapa5w3zf3E
            Content-Type: application/x-www-form-urlencoded

    + Body

            description=nihil

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "13",
                "type": "comment",
                "attributes": {
                  "description": "nihil"
                },
                "relationships": {
                  "task": {
                    "data": {
                      "id": "143",
                      "type": "task"
                    }
                  }
                }
              }
            }

+ Request not create comment
**POST**&nbsp;&nbsp;`/v1/tasks/144/comments?id=144`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODYsInVzZXJfaWQiOjE5MSwidWlkIjoiMDM1ZGNjNTItNGJkZC00NWI2LTk1ZDMtNTRlY2EwZjFiM2Y3IiwicnVpZCI6IjVmYmExZDQ3LTdmMDctNDRlNi1iYmUxLTFiMzliNGQxMWJkOSJ9.dNcPeNsphfDqMlFGSWRUGn_nDxXM0oAIxczgFgPEpfY
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
    + id: `14` (number, required)

+ Request destroy comment
**DELETE**&nbsp;&nbsp;`/v1/comments/14`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODYsInVzZXJfaWQiOjE5MiwidWlkIjoiODZhMjFhYzktN2Q5Yi00ZTdiLWI3YWYtMDQ5OTQ0ZjNiNjNkIiwicnVpZCI6IjYyNGIzYTZlLTZhYmYtNGQ0My05NmNmLTA5YTM2Mzk2ZWE4MCJ9.hnKnsFz2f2qFPLIdVHomh2ay62sldFyNetqsBw0_cw8
            Content-Type: application/json

+ Response 204

+ Request not destroy comment
**DELETE**&nbsp;&nbsp;`/v1/comments/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjE5MywidWlkIjoiZDgzZTQ5ZDYtYThhYi00YWEwLWJkZDAtZmU2M2M0MTg1YTk0IiwicnVpZCI6ImU2YWZjMWNlLTJhYWItNDFjNi05ZjIzLWQzOGNlZTEyNTViNSJ9.0cEvcuqGZaPJM9J0SgoYApUIRas-XCrWppUrEbIf4T8
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
    + id: `148` (number, required)

+ Request task position up
**PUT**&nbsp;&nbsp;`/v1/positions/148`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjE5NCwidWlkIjoiNmFlYTVhZGItMGNlMy00MjY4LTk3NzctMGQ0M2UxMTYwZThkIiwicnVpZCI6IjE0NGY2ZWE0LTA4MjItNDA3MS05ZmY5LTE2M2M4OWQxODg1NSJ9.JqWYdQpmXuXtsOjaDL3gqrEJKTTnVbhNKa5aq3XHGqg
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
                "id": "148",
                "type": "task",
                "attributes": {
                  "name": "ipsa",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "135",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request task position down
**PUT**&nbsp;&nbsp;`/v1/positions/151`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjE5NSwidWlkIjoiYWRkOTNjZGYtNTc1Ny00NmVhLTg2M2YtMWUyMTc0ZjJmNjcxIiwicnVpZCI6ImI4NTVkOTA4LWQ2ODEtNDY2ZC1hZGRmLTE4ZjNmYWRlZDFjOCJ9.KL69fDXqgn4cDTKfq1t1UnSwVStiP_SD4gKBp9DkbCM
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
                "id": "151",
                "type": "task",
                "attributes": {
                  "name": "id",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 3
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "136",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjE5NiwidWlkIjoiMTBhYzhkNzctYWJhYi00NTU3LWE4NTgtNzVjM2E1MDRlZTU4IiwicnVpZCI6IjYzYjM2YTI2LTZkZjYtNDEyOS05Yjg1LTU4ZDk4NGMwZmU2NiJ9.E7XrnHXiK8CWrgUecvMH1fbciBnzjqh6Nwxg2sgoMw8
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
**PUT**&nbsp;&nbsp;`/v1/positions/157`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjE5NywidWlkIjoiMzE2ZGRmMDQtMjQ1Ni00N2E2LWE0NTQtZDBiNmRlMTY0ZjNhIiwicnVpZCI6ImE0NDhiYTczLTFjYmEtNDYxZC1hNjVmLWQ0NTY0MzMxYTlhZSJ9.ss_eQJEOHyy2SH9eoFKyQW3oeMgbOPKxSGsdmB-xcRM
            Content-Type: application/json

    + Body

            {
              "position": "eius"
            }

+ Response 422

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "errors": [
                {
                  "source": {
                    "pointer": "/v1/positions/157"
                  },
                  "detail": "Wrong position"
                }
              ]
            }

## Status [/statuses]


### Update task status [PATCH /v1/statuses/{id}]

+ Parameters
    + id: `159` (number, required)

+ Request when do complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/159`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIwOSwidWlkIjoiOWE0OGM4NzAtM2VmYy00YzQwLTlkN2YtMjM1MGIwNTA4YjY3IiwicnVpZCI6ImNkMzBkMTk4LTI2MTYtNDQ5MS1iMTg4LTViMTM0YmMxYTAzYiJ9.G21JiGQ4fnnjPhHzvtCmRSPjW4nxqhuMt-3nwbqMOTs
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "159",
                "type": "task",
                "attributes": {
                  "name": "commodi",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": true,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "144",
                      "type": "project"
                    }
                  }
                }
              }
            }

+ Request when do not complete task
**PATCH**&nbsp;&nbsp;`/v1/statuses/160`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIxMCwidWlkIjoiZGJjMTEyOTUtMTFiNy00MDg2LTlhOWItZTFlOGU0YzcxNzVlIiwicnVpZCI6IjkzMTJlODI4LTU3MTktNGMwMy1iZDZkLWIxZWE3NTZiZWM3OCJ9.U5xj05lfM0b1MUuELvKSPdc-jt4VTy7JBim3BPE_X14
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "160",
                "type": "task",
                "attributes": {
                  "name": "eveniet",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "145",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIxMSwidWlkIjoiNDI0MDk5MGItMTIyZi00ZDgxLWE4MTAtY2NmMmEyNjEwZjdkIiwicnVpZCI6ImQwYjBiODQ5LTg5NGEtNGUzYy04YTRjLTQwZGYwNWZjNWRkNSJ9.TlBxOsM5kT6FuKSM20j2DcRXpSWXaq-7VINiv3sQC9o
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
    + project_id: `147` (number, required)

+ Request create task
**POST**&nbsp;&nbsp;`/v1/projects/147/tasks?id=147`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIxMywidWlkIjoiOWE3YmFiMmUtOWRjOS00OWZiLWFlN2ItNzQ2ODBjZmExYzI5IiwicnVpZCI6Ijk5M2U1YzBmLWRkNjctNDYyOS04YTMyLTBhZTI2YWQ1YjdiMiJ9.CFf7XSpzKh99ycVMtB8mc7DOdHk7GoPh6ibWhWVJke0
            Content-Type: application/json

    + Body

            {
              "name": "modi",
              "deadline": "2021-07-28T10:39:47.849Z"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "162",
                "type": "task",
                "attributes": {
                  "name": "modi",
                  "deadline": "2021-07-28T10:39:47.849Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "147",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIxNCwidWlkIjoiZWNjOGMyNjctMDg3NC00ZDZiLWI5NzItOGE5OTBkZDNmZmZlIiwicnVpZCI6IjdlNzY2MzgyLWFkODctNDdkNS05NWYyLTM5MTRmOTIyYmM3MSJ9.eQW9w0IYRuOKkLdztGj-0FUiKqcMJ4FXIWU1Ad97arc
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
**POST**&nbsp;&nbsp;`/v1/projects/148/tasks?id=148`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIxNSwidWlkIjoiNzlmNGMxMWYtNzIwNC00NjkxLWFjODQtMWIzMmE1YWRmMjBhIiwicnVpZCI6ImVmNmRlM2JkLWE1M2QtNDdjOS04ODM1LTNhMWNmZjNmNmQ0NCJ9.74HWnU6CAJFrXRaWwQeiDh3XWPdVS5KD5QwyWAfW4f4
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
    + id: `163` (number, required)

+ Request update task
**PUT**&nbsp;&nbsp;`/v1/tasks/163`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIxNiwidWlkIjoiNmMxZjc1ZTAtZGQzNS00NzU1LWFlY2ItMmUxYjJjZjQ0NGYyIiwicnVpZCI6IjUzODY4M2E1LWZjY2QtNGMzZi1hMmRhLTA4ZjI1YWJhMjNiOSJ9._GoRgbI2nm4LtstImBxXEXH_4X7rMWRZC3LLlvIR7ZQ
            Content-Type: application/json

    + Body

            {
              "name": "alias"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "data": {
                "id": "163",
                "type": "task",
                "attributes": {
                  "name": "at",
                  "deadline": "2021-07-28T00:00:00.000Z",
                  "status": false,
                  "position": 1
                },
                "relationships": {
                  "project": {
                    "data": {
                      "id": "149",
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
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODcsInVzZXJfaWQiOjIxNywidWlkIjoiMDM0YjFkMDItZTBjOS00NGRiLWI4MmEtZDYyNDZmNTg2OWMzIiwicnVpZCI6IjEzOGM0YmNlLWRiZWMtNDY1Ny05OWIxLWViNjU5YjJkNDE0YyJ9.8ePZc7HdjqsJqAkW4lPeh0XmD2IzS8iluNu2Xx4Akxw
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
**PUT**&nbsp;&nbsp;`/v1/tasks/165`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODgsInVzZXJfaWQiOjIxOCwidWlkIjoiOWY3MGVmZjUtMGYxYi00ZTE1LTkxZDctNTFlYzkxNmRkOTliIiwicnVpZCI6ImI0ODI2OGNlLTdjNGQtNGQ4MS04NmQzLTYyOGE4ZGZiZmJmNiJ9.SaOmKuwH-7ZqeqLg2DrHNx2OAtCdbGXCAP7cgoiYToU
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
    + id: `166` (number, required)

+ Request success destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/166`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODgsInVzZXJfaWQiOjIxOSwidWlkIjoiMjJiOGI5OGMtYzUzOC00YTA0LTgwMTYtYjZiNDMzNDc5ZGNhIiwicnVpZCI6IjllMmI0MjY5LTA4NWYtNDg5NS1iZjM0LWZhYTc4OTJlODYzYSJ9.hpfMXBGHfXsMt5viSqAiBjeYXQTCXLNjekxUce1wad8
            Content-Type: application/json

+ Response 204

+ Request failed destroy task
**DELETE**&nbsp;&nbsp;`/v1/tasks/0`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjczODU5ODgsInVzZXJfaWQiOjIyMCwidWlkIjoiMDlhNTM2N2YtNmZiMC00NDMyLWJjODUtOWVlNWExZDYyOGFkIiwicnVpZCI6IjU5ODU3M2MxLWM0ZGUtNGE1Zi05MTM3LTA5Nzk2YzY0MTAxMCJ9.pwWExyjfzmJJDNrOWVzMCSgRjQ_SOAsYi70Ma8I_j5U
            Content-Type: application/json

+ Response 404

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "error": "Not found"
            }
