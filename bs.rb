require 'sinatra'

get '/' do
  erb :index
end

get '/admin' do
  erb :admin
end

post '/admin' do
  @usnm = params[:na]
  @pwd = params[:pw]
  if @usnm == 'admin' && @pwd == 'assword'
    @message = File.open 'users.txt', 'r'
    return erb :message
  else
    @message = 'Access denied!'
    return erb :message
  end
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