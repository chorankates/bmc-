$LOAD_PATH << File.expand_path(sprintf('%s/../lib/', File.dirname(__FILE__)))

## indirection file
require 'bmcplusplus/logger'
require 'bmcplusplus/client'
require 'bmcplusplus/server'