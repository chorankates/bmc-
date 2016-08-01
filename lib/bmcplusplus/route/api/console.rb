

module BmcPlusPlus
  module Route
    module Api
      class Console < BmcPlusPlus::Route::Base


        SCROLLBACK = 500

        ## GET
        get '/' do
          # TODO return the last SCROLLBACK lines
        end

        get '/:lines' do
          # TODO return :lines lines
        end


        ## POST
        # TODO this is going to be the tricky bit

        post '/' do
          raise NotImplementedError.new
        end


        ## unhandled

      end
    end
  end
end