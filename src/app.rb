require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models.rb'

get '/' do
  erb :index
end


get '/signin' do
  erb :signin
end


get '/home' do
  erb :home
end

get '/posts/new' do
  erb :posts_new
end

get '/posts/:id' do
  erb :posts_show
end

get '/ranking' do
  erb :ranking
end

get '/users/:id' do
  erb :users_show
end
