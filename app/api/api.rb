class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  mount Employee::Data

  add_swagger_documentation api_version: 'api'
end
