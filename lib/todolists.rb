class Todolists
  include Swagger::Blocks

  swagger_path '/projects/{project_id}/todolists' do
    operation :get do
      key :description, 'Returns todolists under specific project'
      key :tags, ['todolists']
      parameter do
        key :name, :project_id
        key :in, :path
        key :description, 'ID of project'
        key :required, true
        key :type, :string
        key :format, :string
      end
      response 200 do
        key :description, 'todolists response'
      end
    end

    operation :post do
      key :description, 'Create Todolist'
      key :tags, ['todolists']
      parameter do
        key :name, :project_id
        key :in, :path
        key :description, 'ID of Project'
        key :required, true
        key :type, :string
        key :format, :string
      end
      parameter do
        key :name, :data
        key :in, :body
        key :description, 'Todolist information'
        key :required, true
      end
    end
  end

  swagger_path '/todolists/{id}' do
    operation :get do
      key :description, 'Get todolist by id'
      key :tags, ['todolists']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of Todolist'
        key :required, true
        key :type, :string
        key :format, :string
      end
    end

    operation :patch do
      key :description, 'Update todolist by id'
      key :tags, ['todolists']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of Todolist'
        key :required, true
        key :type, :string
        key :format, :string
      end
      parameter do
        key :name, :data
        key :in, :body
        key :description, 'Todolist information'
        key :required, true
      end
    end

    operation :delete do
      key :description, 'Delete todolist by id'
      key :tags, ['todolists']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of Todolist'
        key :required, true
        key :type, :string
        key :format, :string
      end
    end
  end
end



