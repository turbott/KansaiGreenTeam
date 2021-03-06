require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models.rb'

enable :sessions

helpers do
  Dotenv.load
  Cloudinary.config do |config|
    config.cloud_name = ENV['CLOUD_NAME']
    config.api_key = ENV['CLOUDINARY_API_KEY']
    config.api_secret = ENV['CLOUDINARY_API_SECRET']
  end

  def current_user
    User.find_by(id: session[:user])
  end

  def authorize
    redirect '/' if current_user.nil?
  end

  def authorize_redirect_to_home
    redirect '/home' if current_user
  end
end

not_found do
  status 404
  erb :not_found
end

before do
  if %w[/ /signin].include?(request.path_info)
    authorize_redirect_to_home
  else
    authorize unless request.path_info == 'signout'
  end
end

get '/' do
  erb :index
end

get '/signin' do
  erb :signin
end

get '/signout' do
  session[:user] = nil
  redirect '/'
end

get '/home' do
  @posts = Post.all
  erb :home
end

get '/posts/new' do
  erb :posts_new
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :posts_show
end

get '/ranking' do
  erb :ranking
end

get '/users/:id' do
  erb :users_show
end

post '/signin' do
  user = User.find_by(account_name: params[:account_name])
  puts user
  if user&.authenticate(params[:password])
    session[:user] = user.id
    redirect '/home'
  else
    redirect '/signin'
  end
end

post '/posts/new' do
  file = params[:file]
  if file && !current_user.nil?
    post =
      current_user.posts.create(data_url: '', description: params[:description])
    tempfile = file[:tempfile]
    upload = Cloudinary::Uploader.upload(tempfile.path)
    post.update_attribute(:data_url, upload['url'])

    redirect '/home'
  else
    redirect '/posts/new'
  end
end
