require 'bundler'
Bundler.require

require './models/BirdModel'

require './controllers/BirdController'

run Sinatra::Application

ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:database => 'thebirds2'
)

map('/birds'){run BirdController}
