class Members
  include Swagger::Blocks
  swagger_path '/members/{id}/assigned_todos' do
    operation :get do
      key :description, "Returns member's assigned todos"
      key :tags, ['members']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of member'
        key :required, true
        key :type, :string
        key :format, :string
      end
      response 200 do
        key :description, 'member response'
      end
    end
  end

  swagger_path '/members/{id}/closed_todos' do
    operation :get do
      key :description, "Returns member's closed todos"
      key :tags, ['members']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of member'
        key :required, true
        key :type, :string
        key :format, :string
      end
      response 200 do
        key :description, 'member response'
      end
    end
  end

  swagger_path '/members/{id}/created_todos' do
    operation :get do
      key :description, "Returns member's created todos"
      key :tags, ['members']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of member'
        key :required, true
        key :type, :string
        key :format, :string
      end
      response 200 do
        key :description, 'member response'
      end
    end
  end
end
