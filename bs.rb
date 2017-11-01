require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @name = params[:username]
  @phone = params[:phone]
  @date_time = params[:date_time]
  
end