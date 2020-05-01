## Initialization Steps
Install php composer if it is not available in local machine

Install Lumen Packages
### composer Install

Update .env file in root directory to connect database. Default configuration mentioned below:
### DB_DATABASE=rabbit_server
### DB_USERNAME=root
### DB_PASSWORD=123456

Perform database migration before starting the Server
### php artisan migrate

Run Server
### php -S localhost:8000 -t public

MySQL database file named "rabbit_server.sql" can be found in root directory(optional).

API Endpoints:

All Files : GET http://localhost:8000/api/allfiles

Files Paginated & Search : GET http://localhost:8000/api/files/{page}/{keyword}

Paginated History: GET http://localhost:8000/api/history/{page}

Upload Files: POST http://localhost:8000/api/upload-file

Delete File: DELETE http://localhost:8000/api/file/{id}
