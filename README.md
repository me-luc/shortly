# Shortly Endpoints

## SIGN IN

Allows a user to sign in to their account with their registered email and password. The request requires a JSON body with email and password fields, and the response returns a token that identifies the user.

### Request

`POST /sign-in/`
    
```json
{
  "email": "",
  "password": ""
}
```

### Request Body

- `email` (string, required): The user's already registered e-mail, must be a valid e-mail.
- `password` (string, required): The password chosen by the user while signing up.

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:30 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json

    7bf33b5f-a218-4439-bde9-3ae2ae2afa69
    
    
    
## SIGN IN

Allows a new user to sign up for a new account with their name, email, and password. The request requires a JSON body with name, email, password, and confirmPassword fields, and the response returns a token that identifies the user.

### Request

`POST /sign-up/`

```json
{
  "name": "",
  "email": "",
  "password": "",
  "confirmPassword": ""
}
```

### Request Body

- `name` (string, required): The full name of user.
- `email` (string, required): The user's e-mail, must be a valid e-mail.
- `password` (string, required): The password chosen by the user.
- `confirmPassword` (string, required): The confirmation of user password, both passwords must match.

### Response

    HTTP/1.1 201 OK
    Date: Thu, 24 Feb 2011 12:36:30 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json

    7bf33b5f-a218-4439-bde9-3ae2ae2afa69
    
    
    
## GET USER INFORMATION

Retrieves the user's information, including their ID, name, visit count, and a list of shortened URLs created by the user.

### Request

`GET /users/me/`

```json
headers: { 
  Authorization: Bearer <access_token>
}
```

### Request Header

- `token` (string, required): The token that identifies the user and is provided while signing in/up.

### Response

    HTTP/1.1 200 OK
    Date: Thu, 24 Feb 2011 12:36:30 GMT
    Status: 200 OK
    Connection: close
    Content-Type: application/json

```json
{
  "id": "",
  "name": "",
  "visitCount": "",
  "shortenedUrls": {
    "id": "",
    "shortUrl": "",
    "url": "",
    "visitCount": 0
  }
}
```
