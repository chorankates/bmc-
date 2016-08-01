

module BmcPlusPlus
  module Accessor
    class Ipmi
      include BmcPlusPlus::Logger

      def initialize(config)
        @logger = self.get_logger(self.class)
      end

    end
  end
end