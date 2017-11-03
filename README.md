# docs.tower.im

## Getting Started

### setup
1. `bundle`
2. `npm install -g swagger-cli` _(see https://www.npmjs.com/package/swagger-cli)_

### update
1. edit definitions in lib/*.rb
2. `bundle exec rake build`
3. `swagger validate docs/swagger.json`
4. commit updated .rb and swagger.json

#### Note

Sometimes, you may find everything well, but the update not works, and Github Page says:

>  Your site is having problems building: unable to build page. Please try again later.

Do check over at the [github status website](http://status.github.com/) if their server is down. if it is, there isn't much you can do except wait until it is back up again...