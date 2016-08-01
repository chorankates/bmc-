require 'sinatra'

require 'bmcplusplus/route/api/disk'
require 'bmcplusplus/route/api/power'
require 'bmcplusplus/route/private/debug'

module BmcPlusPlus
  module Route
    class Base < Sinatra::Base

      def self.get_base_path
        '/'
      end

      ## GET
      get '/' do
        # TODO return all information we have about everything
      end

      ## unsupported methods
      post '/' do
        halt 405, {:Accepted.to_s => 'GET'}, 'method not allowed'
      end

      delete '/' do
        halt 405, {:Accepted.to_s => 'GET'}, 'method not allowed'
      end

    end
  end
end