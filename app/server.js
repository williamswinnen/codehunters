const express = require("express");
const path = require("path");

const app = express();

app.get("/smart", (req, res) => {
    res.sendFile(path.join(__dirname + "/smart.html.erb"));
})

const server = app.listen(4000);
