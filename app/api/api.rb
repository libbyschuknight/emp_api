# class API < Grape::API
#   prefix 'api'
#   version 'v1', using: :path
#   mount Employee::Data
# end


require 'grape'

module API
  class Base < Grape::API
    default_format :json

    mount API::EmpDatums => '/emp_datums'

    add_swagger_documentation(
      base_path: "/api",
      hide_documentation_path: true
    )
  end
end
