# docs.tower.im

## Getting Started

### setup
1. `bundle`
1. `npm install -g swagger-cli` _(see https://www.npmjs.com/package/swagger-cli)_

### update
1. edit definitions in lib/*.rb
1. `bundle exec rake build`
1. `swagger validate docs/swagger.json`
1. commit updated .rb and swagger.json
