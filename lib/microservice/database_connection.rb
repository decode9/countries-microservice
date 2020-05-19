require 'mongo'

module Database
    class Service
        class << self
            
            private
            def run_client
                @client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'countries_api')
                @db = client.database
            end

            private
            def close_client
                @client.close
            end
        end
    end
end