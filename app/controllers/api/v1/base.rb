require 'grape-swagger'
require 'doorkeeper/grape/helpers'

module API  
    module V1
      class Base < Grape::API
        mount API::V1::Eventos
        # mount API::V1::AnotherResource
        add_swagger_documentation(
          api_version: "v1",
          hide_documentation_path: true,
          mount_path: "/api/v1/swagger_doc",
          hide_format: true
        )

        # helpers Doorkeeper::Grape::Helpers

        # before do
        #   doorkeeper_authorize!
        # end  
      end
    end
end