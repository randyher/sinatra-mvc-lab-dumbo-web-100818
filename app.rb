require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    @input = params[:user_phrase]
    @latinizer = PigLatinizer.new

    @output = @latinizer.piglatinize(params[:user_phrase])

    if @output[0] != "O"
    @output[1] = @output[1].upcase
    end


    erb :piglatinize
  end

end
