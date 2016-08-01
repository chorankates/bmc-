

module BmcPlusPlus
  module Model
    class Bmc

      attr_reader :state

      def initialize(config)
        @state = :disconnected

        @logger = self.get_logger(self.class)
        @logger.debug(sprintf('initialized[%s]: [%s]', self.class, self.inspect))

        self.connect # TODO should this be optional?
      end

      def connect
        # TODO implement
        return false
        #@state = :connected # TODO should probably enum these
      end

      def inspect
        {
          :state => @state,
        }
      end

      def to_s
        self.inspect.to_s
      end


    end
  end
end