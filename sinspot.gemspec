Gem::Specification.new do |spec|
  spec.name          = "sinatra_spotlight"
  spec.version       = '1.0.6'
  spec.authors       = ["Dante Santos"]
  spec.email         = ["dante.alighierimds@gmail.com"]

  spec.summary       = "A sinatra application generator"
  spec.description   = "Build simple applications based on the mvc model of rails, in a lean way using sinatra as a web service."
  spec.homepage      = "https://github.com/DanteAlg/sinatra_spotlight"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.executables   = ['sinspot']
  spec.default_executable = 'sinspot'
  spec.require_paths = ['lib']
  spec.files = Dir.glob("lib/**/*")
  spec.required_ruby_version = '>= 2.1.0'

  spec.add_dependency 'sinatra', '~> 2.0'
  spec.add_dependency 'byebug', '~> 9.0.6'
  spec.add_dependency 'rspec', '~> 3.0'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
