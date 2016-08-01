require 'bmcplusplus/logger'

module BmcPlusPlus

  class Client
    include BmcPlusPlus::Logger

    # TODO should this be a different repository?
    ## probably not, but it does make the entry points/gem requirements a bit different

  end

    attr_reader :logger, :ip, :user

    def initialize(config)
      @ip       = config[:ip] # TODO some error checking
      @user     = config[:user]
      @password = config[:password] # TODO need to come up with way to handle other auth mechanisms
      @logger   = self.get_logger(self.class)

      @logger = self.get_logger(self.class)
      @logger.debug(sprintf('initialized[%s]: [%s]', self.class, self.inspect))

      self.connect # TODO should this be optional?
    end

    def connect
      # TODO implement this -- taking into account different authentication methods
    end

  end

end
