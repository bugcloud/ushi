require 'rubygems'
require 'json'
require 'sinatra'
require 'erb'

class App < Sinatra::Base
  set :haml, {:format => :html5}
  set :public_folder, "public"
  set :views, "app/views"

  get '/' do
    haml :index
  end

  helpers do
    def partial(page, options={})
      haml page, options.merge!(:layout => false)
    end
  end
end

App.run! if __FILE__ == $0
