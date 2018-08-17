# devnow.io platform V1 2018

require 'sinatra'
require 'sinatra/reloader' if development?
require './developers'

get '/' do
	@developers = Developer.all
	erb :home
	end

get '/contact' do
	erb :contact
	end

not_found do
 erb :not_found
end
