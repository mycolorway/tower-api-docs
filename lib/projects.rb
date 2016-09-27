class Projects
  include Swagger::Blocks

  swagger_path '/teams/{team_id}/projects' do
    operation :get do
      key :description, 'Returns projects under specific team'
      key :tags, ['projects']
      parameter do
        key :name, :team_id
        key :in, :path
        key :description, 'ID of team'
        key :required, true
        key :type, :string
        key :format, :string
      end
      response 200 do
        key :description, 'projects response'
      end
    end

    operation :post do
      key :description, 'Create project'
      key :tags, ['projects']
      parameter do
        key :name, :team_id
        key :in, :path
        key :description, 'ID of team'
        key :required, true
        key :type, :string
        key :format, :string
      end
      parameter do
        key :name, :data
        key :in, :body
        key :description, 'Project information'
        key :required, true
      end
    end
  end

  swagger_path '/projects/{id}' do
    operation :get do
      key :description, 'Get project by id'
      key :tags, ['projects']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of Project'
        key :required, true
        key :type, :string
        key :format, :string
      end
    end

    operation :patch do
      key :description, 'Update project by id'
      key :tags, ['projects']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of team'
        key :required, true
        key :type, :string
        key :format, :string
      end
      parameter do
        key :name, :data
        key :in, :body
        key :description, 'Project information'
        key :required, true
      end
    end

    operation :delete do
      key :description, 'Delete project by id'
      key :tags, ['projects']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of team'
        key :required, true
        key :type, :string
        key :format, :string
      end
    end
  end
end


