Gem::Specification.new do |s|
	s.name = "moby-derp"

	s.version = "0.7.2"

	s.platform = Gem::Platform::RUBY

	s.summary  = "A simple management system for a pod of moby containers"

	s.authors  = ["Matt Palmer"]
	s.email    = ["theshed+moby-derp@hezmatt.org"]
	s.homepage = "http://github.com/mpalmer/moby-derp"

	s.files = `git ls-files -z`.split("\0").reject { |f| f =~ /^(G|spec|Rakefile)/ }
	s.executables = ["moby-derp"]

	s.required_ruby_version = ">= 2.3.0"

	s.add_runtime_dependency "docker-api"
	s.add_runtime_dependency "json-canonicalization"

	s.add_development_dependency 'bundler'
	s.add_development_dependency 'deep_merge'
	s.add_development_dependency 'guard-rspec'
	s.add_development_dependency 'rake', '~> 12'
	s.add_development_dependency 'redcarpet'
	s.add_development_dependency 'rspec'
	s.add_development_dependency 'simplecov'
	s.add_development_dependency 'yard'
end
