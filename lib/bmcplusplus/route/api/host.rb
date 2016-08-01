

module BmcPlusPlus
  module Route
    module Api
      class Host < BmcPlusPlus::Route::Base

        ## GET
        get '/' do
          # TODO return all information we know about the host
        end

        get '/os' do
          # TODO return the OS based on /etc/redhat-release or equivalent
        end

        get '/uptime' do
          # TODO return host uptime
        end

        get '/top' do
          # TODO return `top` output
        end

        get '/ifconfig' do
          # TODO return `ifconfig` output
        end

        ## POST
        post '/arbitrary/:command' do
          # TODO allow arbitrary commands to be run through ipmitool sh
        end

        post '/service/:service' do
          # TODO take action based on body on service (start, stop, restart)
        end

        ## unhandled methods

      end
    end
  end
end