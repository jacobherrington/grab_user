$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "grab_user/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "grab_user"
  spec.version     = GrabUser::VERSION
  spec.authors     = ["jacobherrington"]
  spec.email       = ["jacobherringtondeveloper@gmail.com"]
  spec.homepage    = "https://github.com/jacobherrington"
  spec.summary     = "Grab a user quickly!"
  spec.description = "A hacky way to quickly grab a user."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"
end
