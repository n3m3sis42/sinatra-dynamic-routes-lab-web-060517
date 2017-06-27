require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @request.env["PATH_INFO"].split("/say/")[1].split("/").join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    erb params[:operation].to_sym
  end

end
