# Final Assessment
## Setup Express app and EJS
1. mkdir Brina_Retake3 && cd Brina_Retake3
2. npm init -y
4. npm install express ejs body-parser mysql cookie-parser express-session
5. npm install -g nodemon
6. npm install --save-dev nodemon
7. Initial code to index.js
```
var express = require('express');
var bodyParser = require('body-parser');
const mysql = require('mysql')
var app = express();
const path = require('path');
var cookieParser = require('cookie-parser');
var session = require('express-session');


app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())
app.set('view engine', 'ejs');

app.use(cookieParser());
app.use(session({secret: "Shh, its a secret!",saveUninitialized:true, resave: false}));


app.use(express.static(path.join(__dirname, '/public')));

const db = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'assessment'
});

db.connect((err)=>{
    if(err) throw err
    console.log("Connected to db")
})

app.get("/",(req,res)=>{
    res.render("index");
});

app.listen(process.env.PORT||8080);
```
8. nodemon index.js
9. access at localhost:8080

## Set Up the Xampp Database Mysql.
1. Go to Xampp > Turn on Apache and Mysql. > Click on the admin button in Mysql.
2. Create a database by clicking new in upper left corner and name your database.