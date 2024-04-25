const express = require("express");
const path = require("path");
const app = express();
app.get("/Seller", (req, res) => {
    res.sendFile(path.join(__dirname + "/frontend/sellerDashboard.html"));
})
app.get("/Buyer", (req, res) => {
    res.sendFile(path.join(__dirname + "/frontend/buyerDashboard.html"));
})
app.get('/Sellers', function (req, res) {
    res.sendFile(path.join(__dirname + '/frontend/sellers.html'));
});
app.get('/Quotes', function (req, res) {
    res.sendFile(path.join(__dirname + '/frontend/Quotes.html'));
});
app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname + '/frontend/index.html'));
});
app.get('/My_Requests', function (req, res) {
    res.sendFile(path.join(__dirname + '/frontend/MyRequests.html'));
});
app.get('/sellerMultiReqs', function (req, res) {
    res.sendFile(path.join(__dirname + '/frontend/sellerMultiReqs.html'));
});
app.get('/Login', function (req, res) {
    res.sendFile(path.join(__dirname + '/frontend/Login.html'));
});
const server = app.listen(6002);
const portNumber = server.address().port;
console.log(`port is open on ${portNumber}`);