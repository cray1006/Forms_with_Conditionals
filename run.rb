require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/form' do
  # code!
  erb :form, layout: :main
end

post '/form' do
  # code!
  erb :form, layout: :main
end

get '/example' do
  # code!
  erb :example, layout: :main
end

post '/example' do
  # code!
  erb :example, layout: :main
end
