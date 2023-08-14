# Interview Assignment (v1.0.0)

This package contains the base code for the interview assignment.<br>
You can change or add additional library that will aid you in fulfiling the requirements.
<br>
<br>
Please read through NodeJS API Asessment.pdf carefully before you attempt.
Where the requirements are unclear, you are allowed to make assumptions and justify your assumptions as comments or in readme file.

# Notes and assumptions

SQL database has been setup to use docker compile with the given settings

Teacher & students I'm assuming that since I am not asked to create an endpoint for adding teachers and students that there should be some in the database
I have noted the exising users below:
teachers:
'teacherbarbie@gmail.com','teacherjoe@gmail.com','teacherken@gmail.com'

students :
'james@gmail.com','studentagnes@gmail.com','studentbob@gmail.com','studentcharles@gmail.com','studenthon@gmail.com','studentjoey@gmail.com','studentjohn@gmail.com','studentmiche@gmail.com','studentnic@gmail.com','studentjon@gmail.com','studentmary@gmail.com'

teachers start with no existing students and have to be registered
teachers start with no existing notifications and have to be created

other assumptions and notes can be found as comments in code

## Prerequisites

- NodeJS v18.x.x
- Docker

<br>

## Package Structure

| S/N | Name                     | Type | Description                                                                          |
| --- | ------------------------ | ---- | ------------------------------------------------------------------------------------ |
| 1   | typescript               | dir  | This holds the base code which you should extend in order to fulfil the requirements |
| 2   | NodeJS API Asessment.pdf | file | The specification for the assignment                                                 |
| 3   | README.md                | file | This file                                                                            |

<br>

## Exposed Port

| S/N | Application | Exposed Port |
| --- | ----------- | ------------ |
| 1   | database    | 33306        |
| 2   | application | 3000         |

<br>

## Commands

All the commands listed should be ran in ./typescript directory.

### Installing dependencies

```bash
npm install
```

<br>

### Starting Project

Starting the project in local environment.
This will start all the dependencies services i.e. database.

```bash
npm start
```

<br>

### Running in watch mode

This will start the application in watch mode.

```bash
npm run start:dev
```

<br>

### Check local application is started

You should be able to call (GET) the following endpoint and get a 200 response

```
http://localhost:3000/api/healthcheck
```

<br>

## Extras

### Database

You can place your database migration scripts in typescript/database folder. <br>
It will be ran the first time MySQL docker container is first initialised. <br><br>
Please provide the instruction on how to initialise the database if you are not using the above method.

<br>

## FAQ

### Error when starting up

If you encounter the following error when running `npm start`, it is due to the slow startup of your database container.<br>
Please run `npm start` again.

```
[server.js]	ERROR	SequelizeConnectionError: Connection lost: The server closed the connection.
[server.js]	ERROR	Unable to start application
```

#   t e a c h e r - a d m i n i s t r a t i o n - s y s t e m 
 
 
