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
      key :description, "
文档中的 API 调用地址为测试使用，生产环境 API 地址为 api.tower.im.

API 使用 OAuth2 Authorization Code flow 进行认证。 如何进行 OAuth2 认证请参考

[这里](https://github.com/doorkeeper-gem/doorkeeper/wiki/Testing-your-provider-with-OAuth2-gem)
以及 [OAuth2 Spec](https://tools.ietf.org/html/rfc6749)

API 支持 Refresh Token
        "
    end

    security_definition :tower_auth do
      key :type, :oauth2
      key :authorizationUrl, 'https://beta99.tower.im/oauth/authorize'
      key :tokenUrl, 'https://apibeta99.tower.im/oauth/token'
      key :flow, 'authorization_code'
    end
  end
end
