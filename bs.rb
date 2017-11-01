require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @name = params[:username]
  @phone = params[:phone]
  @date_time = params[:date_time]
  
  @title = "Thank you"
  @message = "Dear #{@name}, your submission time is #{@date_time}."
  return erb :message
  
end