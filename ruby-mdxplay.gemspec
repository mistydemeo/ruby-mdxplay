# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ruby-mdxplay"
  spec.version       = "3.0.0"
  spec.authors       = ["Misty De Meo"]
  spec.email         = ["mistydemeo@gmail.com"]

  spec.summary       = %q{Commandline MDX chiptune player.}
  spec.description   = %q{Simple commandline frontend to the libmdxmini chiptune library, with output via coreaudio.}
  spec.homepage      = "http://github.com/mistydemeo/ruby-mdxplay"
  spec.license       = "GPL-2.0"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "ansi", "~> 1.5"
  spec.add_dependency "coreaudio", "~> 0.0"
  spec.add_dependency "ffi", "~> 1.9"
  spec.add_dependency "slop", "~> 4.0"
end
