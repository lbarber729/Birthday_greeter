require 'sinatra'
# attr_reader :day, :month

# class Birthday_greeter < Sinatra
  get '/birthday' do 
    p params
    @name = params[:user_name]
    @day = params[:birthday_day]
    @month = params[:birthday_month]
    erb(:index)
  end

  post '/birthday_form' do
    erb :birthday_form
  end
# end
