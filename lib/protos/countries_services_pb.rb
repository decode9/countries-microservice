# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: countries.proto for package 'countries'

require 'grpc'
require './lib/protos/countries_pb'

module Countries
  module DataProcessor
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'countries.DataProcessor'

      rpc :PostData, Data, DataResponse
      rpc :GetData, Empty, DataMultipleResponse
      rpc :PutData, Data, DataResponse
      rpc :DeleteData, Data, Empty
    end

    Stub = Service.rpc_stub_class
  end
end
