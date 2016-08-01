

module BmcPlusPlus
  module Route
    module Private
      class Debug < BmcPlusPlus::Route::Base

        def self.get_base_path
          '/private/debug'
        end

        ## GET
        get '/' do
          # TODO .. not sure yet
        end

        ## POST
        post '/command' do
          # TODO run an arbitrary command specified in the body
        end

        ## unsupported methods
        delete '/' do
          halt 405, {:Accept.to_s => 'GET'}, 'method not allowed'
        end

      end
    end
  end
end