# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twilio_client/version'

Gem::Specification.new do |spec|
  spec.name          = "twilio_client"
  spec.version       = TwilioClient::VERSION
  spec.authors       = ["Dylan Jhaveri"]
  spec.email         = ["dylanjhaveri@gmail.com"]
  spec.description   = %q{ Twilio Client wrapper for twilio-ruby }
  spec.summary       = %q{ Twilio Client wrapper for twilio-ruby }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "twilio-ruby"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rr"
end
