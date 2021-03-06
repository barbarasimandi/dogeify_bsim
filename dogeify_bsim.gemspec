
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogeify_bsim/version'

Gem::Specification.new do |spec|
  spec.name          = 'dogeify_bsim'
  spec.version       = DogeifyBsimModule::VERSION
  spec.authors       = ['Barbara Simandi']
  spec.email         = ['barbarasimandi@gmail.com']

  spec.summary       = "Converts English to Doge. Based on Matt Huggins' gem Dogeify."
  spec.description   = 'English to Doge translations'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_dependency 'engtagger'
end
