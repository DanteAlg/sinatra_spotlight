Gem::Specification.new do |spec|
  spec.name          = "slim_app"
  spec.version       = 1.0
  spec.authors       = ["Dante Santos"]
  spec.email         = ["dante.alighierimds@gmail.com"]

  spec.summary       = "Simple ruby web application"
  spec.description   = "Build a simple ruby application with MVC format and specs"
  spec.homepage      = "https://github.com/DanteAlg/slim_app"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.executables   = ['slim_app']
  spec.require_paths = ["lib"]

  spec.add_dependency 'sinatra', '~> 2.0'
  spec.add_dependency 'byebug', '~> 9.0.6'
  spec.add_dependency 'rspec', '~> 3.0'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
