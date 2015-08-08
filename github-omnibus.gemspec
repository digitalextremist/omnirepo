# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Donovan Keme"]
  gem.email         = ["code@extremist.digital"]
  gem.description   = "Create new omnibus repositories out of collections of existing GitHub repositories."
  gem.summary       = "Shell script to unify GitHub repositories as one repository containing them all as sub-directories."
  gem.homepage      = "https://github.com/digitalextremist/github-omnibus"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "github-omnibus"
  gem.version       = '0.0.1'
  gem.licenses      = ['MIT']
end
