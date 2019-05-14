require 'sinatra'

get '/' do
  "Hello!"
end

get '/birthday' do
  erb(:index)
end
