require 'swagger/blocks'
require './lib/docs_root'
require './lib/teams'
require './lib/projects'
require './lib/todolists'
require './lib/todos'

SWAGGERED_CLASSES = [
  DocsRoot,
  Teams,
  Projects,
  Todolists,
  Todos,
].freeze

task :build do
  swagger_data = Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  File.open('./docs/swagger.json', 'w') { |file| file.write(swagger_data.to_json) }
end
