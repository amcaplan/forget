$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "forget/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "forget"
  s.version     = Forget::VERSION
  s.authors     = ["amcaplan"]
  s.email       = ["ariel.caplan@vitals.com"]
  s.homepage    = "http://railsremoteconf.com"
  s.summary     = "Summary of Forget."
  s.description = "Description of Forget."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 3.0"
  s.add_development_dependency "capybara", "~> 2.5.0"
end
