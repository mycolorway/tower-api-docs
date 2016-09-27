class Teams
  include Swagger::Blocks

  swagger_path '/teams' do
    operation :get do
      key :description, "Returns resource owner's all accessable teams"
      key :tags, ['teams']
      response 200 do
        key :description, 'teams response'
      end
    end

    operation :post do
      key :description, 'Create a Team'
      key :tags, ['teams']
      parameter do
        key :name, :data
        key :in, :body
        key :description, 'Team name'
        key :required, true
        key :type, :string
        key :format, :string
      end
    end
  end

  swagger_path '/teams/{id}' do
    operation :patch do
      key :description, 'Update a Team'
      key :tags, ['teams']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of team'
        key :required, true
        key :type, :string
        key :format, :string
      end
      parameter do
        key :name, 'team[name]'
        key :in, :formData
        key :description, 'Team name'
        key :required, true
        key :type, :string
        key :format, :string
      end
    end
  end

  swagger_path '/teams/{id}/members' do
    operation :get do
      key :description, 'Returns team by id'
      key :tags, ['teams']
      parameter do
        key :name, :id
        key :in, :path
        key :description, 'ID of team'
        key :required, true
        key :type, :string
        key :format, :string
      end
      response 200 do
        key :description, 'teams response'
      end
    end
  end

end

