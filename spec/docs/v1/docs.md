{
  "openapi": "3.0.0",
  "info": {
    "title": "API Documentation",
    "description": "",
    "version": "1.0"
  },
  "paths": {
    "/v1/auth": {
      "post": {
        "summary": "Create a user",
        "tags": [
          "Users"
        ],
        "description": "",
        "parameters": [
          {
            "name": "Accept",
            "in": "header",
            "example": "application/json"
          },
          {
            "name": "Content-Type",
            "in": "header",
            "example": "application/json"
          }
        ],
        "requestBody": {
          "content": {
            "application/json": {
              "examples": {
                "create user by token": {
                  "summary": "create user by token",
                  "value": {
                    "email": "janette_hammes@windler.biz",
                    "password": "0NaP3XNhmjZ2p2n7",
                    "password_confirmation": "0NaP3XNhmjZ2p2n7"
                  }
                }
              }
            }
          }
        },
        "responses": {
          "201": {
            "description": "Created",
            "content": {
              "application/json; charset=utf-8": {
                "examples": {
                  "create user by token": {
                    "summary": "create user by token",
                    "value": {
                      "csrf": "46cnSLwD9u6PNlmg/PmNlKI9ooq7h1IGfxG/9s1K9PSaPYrRA7VHZHD1fe8Ioby71xs7CKU2qMKVOh6Pa1q18w=="
                    }
                  }
                }
              }
            },
            "headers": {
              "Content-Type": {
                "description": "application/json; charset=utf-8"
              }
            }
          }
        }
      }
    }
  },
  "tags": [
    {
      "name": "Users",
      "description": ""
    }
  ],
  "x-tagGroups": [
    {
      "name": "Registrations",
      "tags": [
        "Users"
      ]
    }
  ]
}
