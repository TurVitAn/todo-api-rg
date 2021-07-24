

# Group Authorize


## Sessions [/sign_out]


### Create a session [POST /v1/auth/sign_in]


+ Request create user by token
**POST**&nbsp;&nbsp;`/v1/auth/sign_in`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjcyMzM4NTksInVzZXJfaWQiOjE4NiwidWlkIjoiMjVjMWFhNzAtYzk1NS00MGRjLTg4NDQtMTk0N2U0NjJmOTU1IiwicnVpZCI6IjYyMTMyYzFhLWRkYTctNDg4Yy04ODAwLTc0OTYwYTMzZTViYiJ9.wikX1f7E-TnecaFdgWdjoCtaJAnqQj_gda0OszpX7Nk
            Content-Type: application/json

    + Body

            {
              "email": "tyrell@schuppeoga.info",
              "password": "NaCmrq7QY2nv"
            }

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "glK9T+zFZgE6axiFVBoigUhmohVyBn4Bms8FDYUZE9FZsHYtkdU0+K4HckjvKunMfd5iJi8EsGhAN196MCD6Ww=="
            }

### Destroy a session [DELETE /v1/auth/sign_out]


+ Request returns http status success
**DELETE**&nbsp;&nbsp;`/v1/auth/sign_out`

    + Headers

            Accept: application/json
            Authorization: eyJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjcyMzM4NTksInVzZXJfaWQiOjE4NywidWlkIjoiNGM3MmE3MzAtMzViYS00ODk5LTg2YTYtNGY2YjAyN2NkZjIwIiwicnVpZCI6ImJlYzk5NDIzLTY4M2EtNDAwYy04ZTU5LTRhZGQyNmU4NTc1YiJ9.9OD6eAVV9lRG-tU5CNBwh4qqPfT3TYBf7dsoWo0-ADQ
            Content-Type: application/json

+ Response 200

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            "ok"

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
              "email": "hayden.kohler@koelpin.com",
              "password": "zGW21WZ6fYD2g1IR",
              "password_confirmation": "zGW21WZ6fYD2g1IR"
            }

+ Response 201

    + Headers

            Content-Type: application/json; charset=utf-8

    + Body

            {
              "csrf": "uTxweHHlAv2+9z+zTlnQcsb/98N9rCgHY8lWrPdih1HroxtsGEm+16tzAVHHBhUmm61ocZLsCFPyk64CJVwaoQ=="
            }
