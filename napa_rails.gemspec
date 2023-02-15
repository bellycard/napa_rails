# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'napa/version'

Gem::Specification.new do |spec|
  spec.name          = "napa_rails"
  spec.version       = Napa::VERSION
  spec.authors       = ["Darby Frey, Flori Garcia"]
  spec.email         = ["darby@bellycard.com, flori@bellycard.com"]

  spec.summary       = %q{Napa features for Rails}
  spec.description   = %q{Napa features for Rails}
  spec.homepage      = "https://github.com/bellycard/napa_rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "grape"
  spec.add_dependency "kaminari", "~> 0.17.0"
  spec.add_dependency "activerecord", "< 6.0"
  spec.add_dependency "multi_json"
  spec.add_dependency "hashie"
  spec.add_dependency 'roar', ['>= 0.12.0', '< 2.0']

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'acts_as_fu'
  spec.add_development_dependency 'sqlite3', '~> 1.3.6'
end
