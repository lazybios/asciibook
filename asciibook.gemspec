lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asciibook/version'

Gem::Specification.new do |spec|
  spec.name          = "asciibook"
  spec.version       = Asciibook::VERSION
  spec.authors       = ["Rei"]
  spec.email         = ["chloerei@gmail.com"]

  spec.summary       = %q{}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "asciidoctor", "~> 2.0"
  spec.add_runtime_dependency "asciidoctor-htmlbook", "~> 0.0.5"
  spec.add_runtime_dependency "liquid", "~> 4.0"
end
