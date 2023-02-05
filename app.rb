require 'bundler' # pour accéder à toutes les gems
Bundler.require 

$:.unshift File.expand_path('./../lib', __FILE__) # pour accéder aux fichiers directos 
require 'controller'
require 'gossip'
require 'router'
require 'view'

Router.new.perform