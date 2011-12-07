ENV['RACK_ENV'] = 'test'

require 'rubygems'
require 'bundler'
Bundler.setup

require 'rack/test'
require 'rspec'
require_relative File.join(File.dirname(__FILE__), '..', 'lib', 'app.rb')

module RSpecMixin
    include Rack::Test::Methods
      def app() App end
end

::RSpec.configure { |c| c.include RSpecMixin }
