# load gems from gemfile
require 'bundler'
Bundler.require

# load some files
require File.join(File.dirname(__FILE__),'lib', 'brain_rack')
require File.join(File.dirname(__FILE__),'lib', 'request_controller')

# instance of BrainRack
BrainRackApplication = BrainRack.new

# Load the routes
require File.join(File.dirname(__FILE__),'config', 'routes')

# run BrainRack
run RequestController.new
