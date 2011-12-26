$LOAD_PATH << File.expand_path(".")
$LOAD_PATH << File.expand_path(".") + '/lib'
require 'rubygems'
require 'bundler'

Encoding.default_internal = 'utf-8'
Encoding.default_external = 'utf-8'
Bundler.setup
Bundler.require

require 'app'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'app/assets/js'
  environment.append_path 'app/assets/css'
  environment.append_path 'app/assets/img'
  run environment
end

map '/' do
  run App
end
