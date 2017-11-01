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
  
  fi = File.open 'users.txt', 'a'
  fi.write "User: \t#{@name}, phone: \t#{@phone}, date and time: #{@date_time}"
  
  return erb :message
  
end