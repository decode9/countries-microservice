require_relative 'lib/microservice/version'

Gem::Specification.new do |spec|
  spec.name          = "microservice"
  spec.version       = Microservice::VERSION
  spec.authors       = ["Jorge Bastidas"]
  spec.email         = ["jorgebastidas9@gmail.com"]

  spec.summary       = "Summary"
  spec.description   = "Description"
  spec.homepage      = "http://www.thecodeworkers.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.add_dependency "grpc"
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://www.thecodeworkers.com"
  spec.metadata["changelog_uri"] = "http://www.thecodeworkers.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
