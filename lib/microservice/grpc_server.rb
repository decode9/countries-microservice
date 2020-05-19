#!/usr/bin/env ruby
require 'rubygems'
require './lib/protos/countries_services_pb'
require_relative '../controllers/countries_controller'

class RubyServer
    @@services = []
    class << self
        def services
            @@services
        end

        def start
            start_grpc_server
        end

        private
        def start_grpc_server
            @server = GRPC::RpcServer.new
            @server.add_http2_port("[::]:5400", :this_port_is_insecure)
            @server.handle(CountriesController)
            @server.run_till_terminated
        end

        def set_handlers
            @@services.each do |service|
                @server.handle(service)
            end
        end
    end

end

RubyServer.start