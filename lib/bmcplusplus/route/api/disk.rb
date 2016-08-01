

module BmcPlusPlus
  module Route
    module Api
      class Disk < BmcPlusPlus::Route::Base

        def self.get_base_path
          '/api/disk'
        end

        ## GET
        get '/' do
          # TODO return all information about disks that we have
        end

        get '/:disk' do |disk|
          # TODO return all information about `disk`
        end

        ## POST
        # TODO what do we actually want to be able to do here? maybe this is a GET only class

        ## unhandled
        delete '/' do
          halt 405, {:Allow.to_s => 'GET, POST'}, 'method not allowed'
        end

      end
    end
  end
end