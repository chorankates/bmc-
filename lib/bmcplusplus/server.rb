#!/usr/bin/env ruby
## bmcplusbplus.rb - library exposing inital entry to BmcPlusPlus module

module BmcPlusPlus

  class Server

    attr_reader :logger, :method

    def initialize(config)
      # :method can be ipmi or SSH (?)
      if config[:method].eql?(:ipmi)
        @method = :ipmi
      elsif config[:method].eql?(:ssh)
        @method = :ssh
        @ip = config[:ip] # TODO some error checking here
      else
        raise StandardError.new(sprintf('unable to use method[%s]', config[:method]))
      end

      @logger = self.get_logger(self.class)
      @logger.debug(sprintf('initialized[%s]: [%s]', self.class, self.inspect))

      # TODO should we try and connect?

    end

    def inspect
      {
        :method => @method,
      }
    end

    def to_s
      self.inspect.to_s
    end

  end

end