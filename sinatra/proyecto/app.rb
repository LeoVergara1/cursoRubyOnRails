
require "sinatra"
require "sinatra/reloader"



def workshop_content(name)
  File.read("workshops/#{name}.txt")
rescue Errno::ENOENT
  return nil
end
get '/' do
  @files = Dir.entries("workshops")
  @valor = 3
  erb :home
end

get '/workshop/:name' do
  @name = params[:name]
  @description = workshop_content(@name)
  erb :workshop
end

get '/create' do
  erb :create
end

post '/create' do
  puts "Llego..."
  puts params.inspect
end

