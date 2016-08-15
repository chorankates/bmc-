#!/usr/bin/env ruby
## server.rb - runs on raspberry PI, exposes REST API and talks to physical machine through IPMI

require 'sequel'
require 'sinatra'

require 'bmcplusplus/route/base.rb'

module BmcPlusPlus

  class Server
    include BmcPlusPlus::Logger

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
        :bmc => @bmc,
        :method => @method,
      }
    end

    def to_s
      self.inspect.to_s
    end

  end
end