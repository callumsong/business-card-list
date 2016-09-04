var express = require('express'),
    swig = require('swig'),
    riot = require('riot'),
    root_tag = require('./riot-tags/root.tag'),
    header = require('./riot-tags/head.tag'),
    request = require('superagent'),
    app = express(),
    allCards;

// This gets all the tags included to allow server rendering
require('./public/tags-server');

request
  .get('http://jsonplaceholder.typicode.com/users')
  .end(function(err, res) {
    allCards = res.body;
  });

app.engine('html', swig.renderFile);

app.set('view engine', 'html');
app.set('views', __dirname + '/views');

app.use(express.static(__dirname + '/public'));

app.use('/', function(req, res) {
    var tag_output = riot.render(root_tag, {cards: allCards, searchTerm: 'lebsack'});
    res.render('index', {
        tag_content: tag_output,
        cards: JSON.stringify(allCards),
        searchTerm: 'lebsack',
        header_content: riot.render(header)
    });
});

app.listen(3000, function() {
  console.log('server listening on port 3000');
});