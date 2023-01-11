HTTP requests components:

* method or verb (GET, POST,...)
* path (e.g.: /todos/1)
* parameters (a key-value pair of parameters)

A GET request can also contain query parameters, as part of the URL.

The POST method is often used to send data to the web server (usually to create or update data, or just send some information). What is done with this data depends of the implementation of the web server.

A POST request can also contain body parameters. Contrarily to query parameters, they are not included in the URL, but within the request body itself. 

HTTP response components:
* status code (200, 404)
* content or data

EXERCISE 1: curl https://jsonplaceholder.typicode.com/todos/12
CHALLENGE: ➜ curl -X POST https://jsonplaceholder.typicode.com/todos


Request parameters

EXERCISE 1: curl -X GET https://postman-echo.com/get\?title\='Welcome'
EXERCISE 2: curl -X POST https://postman-echo.com/post





