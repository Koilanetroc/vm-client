# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'prometheus/client/version'

Gem::Specification.new do |s|
  s.name              = 'vm-client'
  s.version           = Prometheus::Client::VERSION
  s.summary           = 'Fork of prometheus-client intended to be a drop-in replacement' \
                        'for prometheus-client to switch from Prometheus to VictoriaMetrics'
  s.authors           = ['Oleg Tolmashov']
  s.email             = ['koilanetroc@gmail.com']
  s.homepage          = 'https://github.com/Koilanetroc/vm-client'
  s.license           = 'Apache-2.0'

  s.files             = %w(README.md LICENSE) + Dir.glob('{lib/**/*}')
  s.require_paths     = ['lib']

  s.add_development_dependency 'benchmark-ips'
  s.add_development_dependency 'concurrent-ruby'
  s.add_development_dependency 'timecop'
end
