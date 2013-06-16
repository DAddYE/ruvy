source 'https://rubygems.org'
gemspec

gem 'yard'
gem 'redcarpet'

if File.exist?('../ffi-gen')
  gem 'ffi-gen', require: 'ffi/gen', path: '../ffi-gen'
else
  gem 'ffi-gen', require: 'ffi/gen', github: 'daddye/ffi-gen'
end
