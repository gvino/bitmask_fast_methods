$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bitmask_fast_methods/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bitmask_fast_methods"
  s.version     = BitmaskFastMethods::VERSION
  s.authors     = ["George Vinogradov"]
  s.email       = ["g-vino@yandex.ru"]
  s.homepage    = "http://github.com/gvino/bitmask_fast_methods"
  s.summary     = "Very simple gem to provide automatic generation of methods for bitmask_attributes"
#  s.description = "TODO: Description of BitmaskFastMethods."

#  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
#  s.test_files = Dir["test/**/*"]
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")


  s.add_dependency 'bitmask_attributes', '~> 0.4'
  s.add_dependency 'activerecord', '~> 3.0'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'shoulda'
end
