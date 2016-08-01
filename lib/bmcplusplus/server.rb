#!/usr/bin/env ruby
## server.rb - runs on raspberry PI, exposes REST API and talks to physical machine through IPMI

require 'sequel'

require 'bmcplusplus/route/base.rb'

module BmcPlusPlus
  class Server
    include BmcPlusPlus::Logger

    attr_reader :bmc, :logger

    def initialize(config)
      @logger = self.get_logger(self.class)

      # TODO not sure this is exactly right..
      @bmc = BmcPlusPlus::Model::Bmc.new(config)

      @logger.debug(sprintf('initialized[%s]: [%s]', self.class, self.inspect))

    end

    def inspect
      {
        :bmc => @bmc,
      }
    end

    def to_s
      self.inspect.to_s
    end
  end
end