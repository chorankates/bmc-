

module BmcPlusPlus
  module Route
    module Api
      class Power < BmcPlusPlus::Route::Base
        def self.get_base_path
          '/api/power'
        end

        ## GET
        get '/' do
          # TODO return all information we have wrt power
        end

        get '/:powersupply' do |powersupply|
          # instead of returning all information, just return information about :powersupply
        end

        ## POST
        post '/:powersupply' do |powersupply|
          # allow state changes of power
          # { :face => '', args => ''}
          # faces: on, off
        end

        ## unhandled
        delete '/*' do
          halt 405, {:Allow.to_s => 'GET, POST'}, 'method not allowed'
        end

      end
    end
  end
end