require 'sinatra/base'

class Birthday < Sinatra::Base

  def todays_date
    @todays_date = Time.new.strftime("%d/%B")
  end

  def birthday_date
    @birthday_date = "#{@day}/#{@month}"
  end

  get '/' do
    erb :birthday_form
  end

  post '/birthday' do
    p params
    @name = params[:user_name]
    @day = params[:birthday_day]
    @month = params[:birthday_month]
      @todays_date = Time.new.strftime("%d/%B")
      @birthday_date = "#{@day}/#{@month}"
    erb (:happy_birthday)
  end

end
