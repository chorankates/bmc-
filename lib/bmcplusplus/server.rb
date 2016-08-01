#!/usr/bin/env ruby
<<<<<<< HEAD
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

=======
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

>>>>>>> 282c8fba05d152b7f6890958b075f3878ba57416
    end

    def inspect
      {
<<<<<<< HEAD
        :bmc => @bmc,
=======
        :method => @method,
>>>>>>> 282c8fba05d152b7f6890958b075f3878ba57416
      }
    end

    def to_s
      self.inspect.to_s
    end
<<<<<<< HEAD
  end
=======

  end

>>>>>>> 282c8fba05d152b7f6890958b075f3878ba57416
end