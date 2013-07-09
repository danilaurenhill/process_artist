require 'sinatra'
require 'sinatra/reloader'
get "/form" do
  erb :form
end

get '/decrypt/:secret' do  
  params[:secret].reverse  
end  
  
not_found do  
   status 404 
  'not found'  
end  

not_found do  
  halt 404, 'page not found' 
end  

post '/form' do  
  "You said '#{params[:message]}'"  
end  

get '/secret' do  
  erb :secret  
end  
get '/time&&date' do
time1 = Time.new
"Current Time and Date : " + time1.inspect
end

get "/hello/:name" do
  params[:name]
end

get "/more/*" do
	params[:splat]
end

get "/" do
  "Hello, World"
end

get "/about" do
  "my name is Danielle."
end