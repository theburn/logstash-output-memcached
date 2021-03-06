Gem::Specification.new do |s|
  s.name          = 'logstash-output-memcached'
  s.version       = '0.1.0'
  s.licenses      = ['Apache License (2.0)']
  s.summary       = 'Sets items in memcached.'
  s.homepage      = 'https://github.com/fylie/logstsh-output-memcached.git'
  s.authors       = ['fylie']
  s.email         = 'kylieafisher@gmail.com'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency "logstash-codec-plain"
  s.add_runtime_dependency "dalli"
  s.add_runtime_dependency "json"
  s.add_development_dependency "logstash-devutils"
end
