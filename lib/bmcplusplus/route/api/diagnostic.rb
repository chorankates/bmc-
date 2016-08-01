

module BmcPlusPlus
  module Route
    module Api
      class Diagnostic < BmcPlusPlus::Route::Base

        ## GET
        get '/' do
          # TODO return all information we have on this node
        end

        get '/healthcheck' do
          # TODO return true|false based on whether or not EVERYTHING is working
        end

        ## POST
        post '/collect' do
          # TODO trigger a gathering of all* logs, return a URL that user can call back to see progress, or when complete, url it is accessible at
        end

        post '/reset' do
          # TODO remove all events/records that we know about
        end

        ## unhandled methods
        delete '/' do
          halt 405, {:Allowed.to_s => 'GET, POST'}, 'method not allowed'
        end

      end
    end
  end
end