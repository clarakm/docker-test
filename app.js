//We will have 2 distinct versions of our app running within 2 separate docker containers on the same machine
const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("hello goodbye");
});

app.listen(3000, () => {
  console.log("Listening on Port 3000...");
});
