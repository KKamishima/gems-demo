require 'sinatra/base'

class DemoHelloWorld < Sinatra::Base
  configure :production, :development do
    enable :logging
  end

  get '/' do
    "Hello World!"
  end
end
