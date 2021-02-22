Gem::Specification.new do |s|
    s.name        = 'demo_hello_world'
    s.version     = '0.0.0'
    s.summary     = "Hello World from Sinatra"
    s.authors     = "Macnica Networks"
    s.files       = ["lib/demo_hello_world.rb"]
    s.add_runtime_dependency 'sinatra', '~>2.1.0'
  end
  