require 'rubygems'
require 'bundler/setup'

require 'hashie'
require 'ffaker'

require 'polyamorous'

Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each{|f| require f }

RSpec.configure do |config|

end