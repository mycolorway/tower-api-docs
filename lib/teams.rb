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
        key :description, '{"team": {"name": "team name"}}'
        key :required, true
        schema { key :'$ref', :Placeholder }
      end
      response 200 do
        key :description, '# TODO'
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
        key :name, :data
        key :in, :body
        key :description, '{"team": {"name": "team name"}}'
        key :required, true
        schema { key :'$ref', :Placeholder }
      end
      response 200 do
        key :description, '# TODO'
      end
    end
  end

  swagger_path '/teams/{id}/members' do
    operation :get do
      key :description, 'Returns team members by id'
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

  swagger_path '/teams/{id}/member' do
    operation :get do
      key :description, 'Return member by id'
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
