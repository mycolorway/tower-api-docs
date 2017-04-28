class User
  include Swagger::Blocks
  swagger_path '/user' do
    operation :get do
      key :description, "Returns current user"
      key :tags, ['user']
      response 200 do
        key :description, 'user response'
      end
    end
  end
end
