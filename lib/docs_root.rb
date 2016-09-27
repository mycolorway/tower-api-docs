class DocsRoot
  include Swagger::Blocks
  swagger_root do
    key :swagger, '2.0'
    key :schemes, ['https']
    key :host, 'apibeta99.tower.im'
    key :basePath, '/v1'
    key :consumes, ['application/json']
    key :produces, ['application/json']

    info do
      key :version, '1.0.0'
      key :title, 'Tower API'
      key :description, 'Tower API explained'
    end

    security_definition :tower_auth do
      key :type, :oauth2
      key :authorizationUrl, 'https://beta99.tower.im/oauth/authorize'
      key :tokenUrl, 'https://apibeta99.tower.im/oauth/token'
      key :flow, 'accessCode'
    end
  end
end
