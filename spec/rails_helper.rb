require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'

puts "1. Before environment config"

require File.expand_path('../config/environment', __dir__)
require 'rspec/rails'
require 'selenium-webdriver'
require 'factory_bot'
