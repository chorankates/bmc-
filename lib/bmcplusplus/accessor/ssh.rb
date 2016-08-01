

module BmcPlusPlus
  module Accessor
    class Ssh
      include BmcPlusPlus::Logger

      attr_reader :logger

      # TODO implement this

      def initialize(config)
        # TODO user, password, key (?), ip/host

        @logger = self.get_logger(self.class)
      end

    end
  end
end