const express = require('express')
const app = express()

app.get('/', function (req, res) {
  res.send('Node App! Hello World!')
})

app.listen(10000, function () {
  console.log('Example app listening on port 10000!')
})
