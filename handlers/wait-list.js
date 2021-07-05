const { PrismaClient, Prisma } = require('@prisma/client')
const prisma = new PrismaClient()


exports.create = async (event, context, callback) => {
    try {
      const data = JSON.parse(event.body)
      const createdWaitList = await prisma.waitList.create({ data })
  
      return {
        statusCode: 200,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(createdWaitList)
      }
    } catch (e) {
        console.error(e)
        if (e.code === 'P2002') {
          return {
            statusCode: 409,
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
              error: 'A waitList with this email already exists'
            })
          }
        }
      return { statusCode: 500 }
    }
}

exports.has = async (event, context, callback) => {
  try {
    const email  = event.queryStringParameters ? event.queryStringParameters.email : '' 
    if (!!!email) {
        return {
            statusCode: 422,
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ message: "Please provide email to get result"  })
          }
    }
    const waitList = await prisma.waitList.findUnique({
        where: {
          email: email,
        },
      })
    return {
      statusCode: 200,
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(!!waitList)
    }
  } catch (error) {
    return {
      statusCode: 500,
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(error)
    }
  }
}
  
