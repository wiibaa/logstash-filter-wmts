Gem::Specification.new do |s|

  s.name            = 'logstash-filter-wmts'
  s.version         = '0.0.1'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "The wmts filter is used for parsing WMTS (Web-Map Tile Service) queries from fields."
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Elastic"]
  s.email           = 'info@elastic.co'
  s.homepage        = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "geoscript", "0.1.0.pre" #(MIT license)
  s.add_runtime_dependency "logstash-core", '>= 1.4.0', '< 2.0.0'

  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'logstash-filter-grok'
end
