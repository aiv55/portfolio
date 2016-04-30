require 'sinatra'
require 'haml'

configure do
  # use HTML5 when generating HTML
  set :haml, :format => :html5

  ## for google analytics
  #@analytics_token = 'xxxxxx'
end

before do
  cache_control :public, :must_revalidate, :max_age => 60
end

get '/' do
  haml :index
end