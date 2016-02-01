require 'sinatra'

get '/' do
  "Hello World, and Michael"
end

get '/secret' do
  "Shh, it is a secret"
end

get '/bye' do
  "GOOD RIDANCE!"
end

get '/alphabet' do
  "a, b, c, d, e, f, g, h, i"
end

get '/a-life' do
  "get a life"
end
