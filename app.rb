require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/caesar_cipher.rb'

get '/' do
  params[:input_string] ? string = params[:input_string] : string = 'Encrypted Message'
  index = params[:shift_value] ? params[:shift_value].to_i : 0
  message = c_cypher(string: string, index: index)
  erb :index, locals: { message: message }
end
