require 'sinatra'

get '/' do
  "Hello World!"
end

get '/aiit' do
  "Hi, AIIT"
end

get '/hello/:name' do
  "Hello #{params['name']}!"
end
