require 'jeweler'
require 'rake'
require 'rake/clean'
require 'rake/testtask'

CLEAN.include('pkg/*')

Jeweler::Tasks.new do |gem|
  gem.name        = 'bmcplusplus'
  gem.summary     = 'HTTP RESTful API for use on a BMC'
  gem.description = 'HTTP RESTful API abstracting IPMI commands, running on a Raspberry Pi (or similar)'
  gem.email       = ['choran-kates@salesforce.com', 'conor.code@gmail.com']
  gem.homepage    = 'http://github.com/chorankates/bmcplusbplus'
  gem.authors     = ['Conor Horan-Kates']
  #gem.licenses    =  'MIT' # TODO what license am i supposed to ue again?

  gem.executables = ['bmcplusplus']
end
Jeweler::RubygemsDotOrgTasks.new