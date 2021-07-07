
# Node.js with Prisma ORM & Serverless 

This is a simple serverless application containing 2 endpoints that is deployed on AWS lambda.

## Installation

Process to run the project on you machine.

```bash
git clone https://github.com/zeshan-786/prisma-mysql-lambda.git
```

```bash
cd prisma-mysql-lambda
```

```bash
npm install
```

Run Mysql server on your local machine or you can create an AWS RDS instance and use that connection string in .env file

Use this command to run the application on your local machine.

```bash
sls offline start
```

You'll find the endpoints on [localhost:3000](http://localhost:3000)


## Postman tests
You can find postman collection file in prisma-mysql-lambda/postman_collection
