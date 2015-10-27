ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'

#code to test
require File.expand_path '../../lib/serene_is_awesome.rb', __FILE__


