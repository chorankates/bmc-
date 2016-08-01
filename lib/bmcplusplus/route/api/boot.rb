

module BmcPlusPlus
  module Route
    module Api
      class Boot < BmcPlusPlus::Route::Base

        ## GET
        get '/' do
          # TODO return everything we know about boot related things
        end

        get '/order' do
          # TODO return the current boot order
        end

        get '/current' do
          # TODO return the currently selected boot mode
        end

        ## POST
        post '/current/:mode' do |mode|
          # TODO set the boot mode to :mode
        end



        ## unhandled

      end
    end
  end
end