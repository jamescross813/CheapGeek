# frozen_string_literal: true

require_relative "lib/CheapGeek/version"

Gem::Specification.new do |spec|
  spec.name          = "CheapGeek"
  spec.version       = CheapGeek::VERSION
  spec.authors       = ["jamescross"]
  spec.email         = ["crossjames813@gmail.com"]

  spec.summary       = "CheapGeek is a Ruby Gem for the PC Gaming enthustasit on a budget."
  spec.description   = "CheapGeek is a Ruby Gem for the PC Gaming enthustasit on a budget. It's expensive enough to buy the computer, included in this app is a range of free to play games organized by genre. The source material from the information comes from FreeToPlay API." 
  spec.homepage      = "https://github.com/jamescross813/CheapGeek"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jamescross813/CheapGeek"
  spec.metadata["changelog_uri"] = "https://github.com/jamescross813/CheapGeek"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
