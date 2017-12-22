lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "elixa/version"

Gem::Specification.new do |spec|
  spec.name          = "elixa"
  spec.version       = Elixa::VERSION
  spec.authors       = ["Sergio Pantoja"]
  spec.email         = ["2530982+sergiopantoja@users.noreply.github.com"]

  spec.summary       = "Elixa does cool stuff."
  spec.description   = "Elixa does some really really cool stuff."
  spec.homepage      = "https://github.com/sergiopantoja/elixa"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
