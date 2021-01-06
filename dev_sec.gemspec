require_relative 'lib/dev_sec/version'

Gem::Specification.new do |spec|
  spec.name          = "dev_sec"
  spec.version       = DevSec::VERSION
  spec.authors       = ["cody alvarez"]
  spec.email         = ["codemk13@outlook.com"]

  spec.summary       = "i dont need you to tell me how good my coffee is"
  spec.description   = "some info"
  spec.homepage      = "https://github.com/codyalvarez/dev_sec"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/codyalvarez/dev_sec"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
