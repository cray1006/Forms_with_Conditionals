require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/form' do
  # code!
  @states = []
  state_list = ["California", "Virginia", "Hawaii", "New Mexico", "Texas"]  #array to hold state names
  id_list = ["CA", "VA", "HI", "NM", "TX"]  #array to hold state id's
  
  0.upto(state_list.count - 1) do |x| #iterate through the name and id arrays
    state = {}  #create empty hash
    state[:id] = id_list[x] #add id and name to hash
    state[:name] = state_list[x]
    @states << state  #append hash to @states array
  end
  
  @states.sort_by!{|x| x[:name]}  #sorting @states by name
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
