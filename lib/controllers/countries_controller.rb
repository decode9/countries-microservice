require 'grpc'
require './lib/protos/countries_services_pb'

class CountriesController < Countries::DataProcessor::Service
    
    def get_data(request, _unused_call)
        begin
            puts "We Enter in Get Request Method"
            Countries::DataMultipleResponse.new(data: [{_id: "hello"}])
            #puts request
            #dataSend = {"_id" => "1", "name" => 'Venezuela', "prefix" => 'VE', "phone_prefix" => "+58", "active": true }
            #puts request
            #Countries::DataMultipleResponse.new(_id: "hello")
        rescue StandardError => msg
            puts msg
        end
    end
end