# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oshinagaki/version'

Gem::Specification.new do |spec|
  spec.name          = "oshinagaki"
  spec.version       = Oshinagaki::VERSION
  spec.authors       = ["tkoyama"]
  spec.email         = ["tkoyama@aiming-inc.com"]
  spec.summary       = %q{generate changelogs}
  spec.description   = %q{generate changelogs from merged PRs}
  spec.homepage      = "https://github.com/tkoyama/oshinagaki"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "octokit"
end
