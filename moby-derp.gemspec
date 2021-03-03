Gem::Specification.new do |gemspec|
	gemspec.name    = "moby-derp"
	gemspec.summary = "A simple management system for a pod of moby containers"
	gemspec.version = "0.7.2"

	gemspec.authors  = [
		"Matt Palmer",
		"Daniel Waterworth",
		"Sam Saffron",
		"Andrew Schleifer",
		"Michael Brown",
	]
	gemspec.email    = ["team@discourse.org"]
	gemspec.homepage = "http://github.com/discourse/moby-derp"

	gemspec.files       = `git ls-files -z`.split("\0").reject { |f| f =~ /^(G|spec|Rakefile)/ }
	gemspec.executables = ["moby-derp"]

	gemspec.required_ruby_version = ">= 2.3.0"
	gemspec.platform              = Gem::Platform::RUBY

	gemspec.add_runtime_dependency "docker-api"
	gemspec.add_runtime_dependency "json-canonicalization"

	gemspec.add_development_dependency 'bundler'
	gemspec.add_development_dependency 'deep_merge'
	gemspec.add_development_dependency 'guard-rspec'
	gemspec.add_development_dependency 'rake', '~> 12'
	gemspec.add_development_dependency 'redcarpet'
	gemspec.add_development_dependency 'rspec'
	gemspec.add_development_dependency 'simplecov'
	gemspec.add_development_dependency 'yard'
end
