require 'log4r'
require 'log4r/yamlconfigurator'
require 'log4r/outputter/datefileoutputter'

module BmcPlusPlus

  module Logger

    @@configured = false

    # +klass+ Symbol representation of the class requesting the logger
    # +file+ String file path to the log4r YAML configuration file to use - will be determined automatically if not passed
    # +root+ String dir path to where log4r .log output should go to - will be determined dynamically if not provided
    def self.get_logger(klass, file = nil, root = nil)
      unless @@configured

        # you so clever
        file = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'log4r.yaml'))
        root = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'logs'))

        log4r_configurator = Log4r::YamlConfigurator
        log4r_configurator['LOG_ROOT'] = root
        log4r_configurator.load_yaml_file(file)
        logger = Log4r::Logger.get(klass.to_s)
        @@configured = true
      else
        logger = Log4r::Logger.get(klass.to_s)
      end

      logger
    end

  end
end