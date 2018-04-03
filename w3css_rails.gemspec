
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "w3css_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "w3css_rails"
  spec.version       = W3cssRails::VERSION
  spec.authors       = ["akashpinnaka"]
  spec.email         = ["aakash.pinnaka@gmail.com"]

  spec.summary       = %q{A gem whih provides w3.css library.}
  spec.description   = %q{W3.CSS is a modern CSS framework with built-in responsiveness. Smaller and faster than any other CSS frameworks. Easier to learn, and easier to use than any other CSS frameworks. Better cross-browser compatibility than any other CSS frameworks. Uses standard CSS only (No jQuery or JavaScript library). Supports modern responsive mobile first design by default. Provides CSS equality for all browsers: Chrome, Firefox, Edge, IE, Safari, Opera. Provides CSS equality for all devices: desktop, laptop, tablet, and mobile. Speeds up and simplifies web development.}
  spec.homepage      = "https://github.com/akashpinnaka/w3css_rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
