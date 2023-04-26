const express = require('express');
const app = express();
const cors = require('cors');
require('dotenv').config();

// console.log(process.env);

app.listen(3000, () => {
  console.log('Application started and Listening on port 3000');
});

app.use(cors({
  origin: '*'
}));

app.use(express.static(__dirname));

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/project7api/index.html");
});

