Gem::Specification.new do |spec|
  spec.name          = "slim_app"
  spec.version       = 1.0
  spec.authors       = ["Dante Santos"]
  spec.email         = ["dante.alighierimds@gmail.com"]

  spec.summary       = "Library to build a little app in ruby"
  spec.description   = "Library to build a little app in ruby"
  spec.homepage      = "https://github.com/DanteAlg/slim_app"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
