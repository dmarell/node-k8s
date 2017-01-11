var express = require('express');
var app = express();
var router = express.Router();
var bodyParser = require('body-parser');

app.use(bodyParser.urlencoded({extended: true}));
app.use(bodyParser.json());

router.get('/', function (req, res) {
    res.json({message: 'node-k8s is here'});
});

app.use('/', router);

const port = 9090;
app.listen(port);
console.log('Server is up on port ' + port);
