# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Donovan Keme"]
  gem.email         = ["code@extremist.digital"]
  gem.description   = "Create a new omnibus repository out of collections of existing GitHub repositories."
  gem.summary       = "Unify GitHub repositories as one repository containing them all as sub-directories."
  gem.homepage      = "https://github.com/digitalextremist/omnirepo"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omnirepo"
  gem.version       = '0.9.pre'
  gem.licenses      = ['MIT']
  gem.required_ruby_version = ">= 1.9.2"
  gem.required_rubygems_version = ">= 1.3.6"
end
