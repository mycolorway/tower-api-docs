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
        key :description, '{"todo": {"content": "todo content", "desc": "todo desc"}}'
        key :required, true
        schema { key :'$ref', :Placeholder }
      end
      response 200 do
        key :description, '# TODO'
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
      response 200 do
        key :description, '# TODO'
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
        key :description, '{"todo": {"content": "todo content", "desc": "todo desc"}}'
        key :required, true
        schema { key :'$ref', :Placeholder }
      end
      response 200 do
        key :description, '# TODO'
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
      response 200 do
        key :description, '# TODO'
      end
    end
  end

  swagger_path '/todos/{id}/completion' do
    operation :post do
      key :description, 'complete todo by id'
      key :tags, ['todos']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of Todo'
        key :required, true
        key :type, :string
        key :format, :string
      end
      response 200 do
        key :description, '# TODO'
      end
    end

    operation :delete do
      key :description, 'reopen todo by id'
      key :tags, ['todos']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of Todo'
        key :required, true
        key :type, :string
        key :format, :string
      end
      response 200 do
        key :description, '# TODO'
      end
    end
  end

  swagger_path '/todos/{id}/due' do
    operation :patch do
      key :description, 'set due of todo by id'
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
        key :description, '{ "todos_due": { "due_at": "2017-02-08" } }'
        key :required, true
        schema { key :'$ref', :Placeholder }
      end
      response 200 do
        key :description, '# TODO'
      end
    end
  end

  swagger_path '/todos/{id}/assignment' do
    operation :patch do
      key :description, 'set assignee of todo by id'
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
        key :description, '{ "todos_assignment": { "assignee_id": "assignee guid or leave this empty to unassign" } }'
        key :required, true
        schema { key :'$ref', :Placeholder }
      end
      response 200 do
        key :description, '# TODO'
      end
    end
  end

  swagger_path '/todos/{id}/assignment' do
    operation :delete do
      key :description, 'unassign todo by id'
      key :tags, ['todo']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of todo'
        key :required, true
        key :type, :string
        key :format, :string
      end
      response 200 do
        key :description, '# TODO'
      end
    end
  end

  swagger_path '/todos/{id}/comments' do
    operation :post do
      key :description, 'create comment of todo by id'
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
        key :description, '{ "todos_comment": { "content": "hello" } }'
        key :required, true
        schema { key :'$ref', :Placeholder }
      end
      response 200 do
        key :description, '# TODO'
      end
    end
  end
end
