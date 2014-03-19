# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fb_parse/version'

Gem::Specification.new do |spec|
  spec.name          = "fb_parse"
  spec.version       = FbParse::VERSION
  spec.authors       = ["Imaan Minaii"]
  spec.email         = ["imaan@appfly.com"]
  spec.description   = %q{Gem to parse Facebook ID's from various Facebook URL types. The five link types are: Status, Photo, Video, Link, Checkin.}
  spec.summary       = %q{Gem to parse FB ID's from FB URLs}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
