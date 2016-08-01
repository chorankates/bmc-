

module BmcPlusPlus
  module Route
    module Api
      class Network < BmcPlusPlus::Route::Base

        ## GET
        get '/' do
          # TODO return all information we have on networking
        end

        get '/host' do
          # TODO return all information on the host network interfaces
        end

        get '/bmc' do
          # TODO return all information on the bmc network interfaces
        end

        get '/:type/dhcp' do
          # TODO return the DHCP setting for :type interface (ib or host)
        end

        ## POST
        post '/:type/dhcp/:mode' do |type,mode|
          # TODO enable/disable DHCP based on :mode on :type interface (ib or host)
        end

        # TODO implement mechanisms to allow static IP configuration



        ## unhandled methods

      end
    end
  end
end