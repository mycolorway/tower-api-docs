class Todos
  include Swagger::Blocks

  swagger_path '/todolists/{todolist_id}/todos' do
    operation :get do
      key :description, 'Returns todos under specific todolist'
      key :tags, ['todos']
      parameter do
        key :name, :todolist_id
        key :in, :path
        key :description, 'ID of Todolist'
        key :required, true
        key :type, :string
        key :format, :string
      end
      response 200 do
        key :description, 'todolists response'
      end
    end

    operation :post do
      key :description, 'Create Todo'
      key :tags, ['todos']
      parameter do
        key :name, :todolist_id
        key :in, :path
        key :description, 'ID of Todolist'
        key :required, true
        key :type, :string
        key :format, :string
      end
      parameter do
        key :name, :data
        key :in, :body
        key :description, 'Todo information'
        key :required, true
      end
    end
  end

  swagger_path '/todos/{id}' do
    operation :get do
      key :description, 'Get todo by id'
      key :tags, ['todos']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of Todo'
        key :required, true
        key :type, :string
        key :format, :string
      end
    end

    operation :patch do
      key :description, 'Update todo by id'
      key :tags, ['todos']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of Todo'
        key :required, true
        key :type, :string
        key :format, :string
      end
      parameter do
        key :name, :data
        key :in, :body
        key :description, 'Todo information'
        key :required, true
      end
    end

    operation :delete do
      key :description, 'Delete todo by id'
      key :tags, ['todos']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of Todo'
        key :required, true
        key :type, :string
        key :format, :string
      end
    end
  end
end
