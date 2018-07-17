require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  
  get '/' do 
    "This is the home page"
  end 
  
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end
  
  get "/goodbye/:name" do
    @given_name = params[:name]
    "Goodbye, #{@given_name}."
  end 

get "/multiply/:num1/:num2" do 
  @num1 = params[:num1].to_i 
  @num2 = params[:num2].to_i
  @answer = @num1 * @num2
  @answer.to_s 
  erb :multiply 
end 

end
