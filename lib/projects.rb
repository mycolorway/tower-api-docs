class Projects
  include Swagger::Blocks

  swagger_path '/teams/{team_id}/projects' do
    operation :get do
      key :description, "Returns projects under specific team"
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
  end
end


