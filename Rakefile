require 'bundler/gem_tasks'
require 'bundler/setup'
require 'ffi/gen'
require 'yard'

task :check do
  sh 'git submodule update --init' unless File.exist?('ext/libuv/.git')
  raise "Please install llvm" unless system('which llvm-config')
end

desc "Generates libuv ext"
task :compile => :check do
  sh 'cd ext && rake'
end

desc "Clean libuv build"
task :clean do
  sh 'cd ext/libuv && make clean'
end

desc "Rebuild libuv"
task :rebuild => [:clean, :compile]

default_config = -> (header, suffix="", extra={}) do
  {
    module_name: 'UV',
    ffi_lib:     'File.expand_path("../../ext/libuv/libuv.#{FFI::Platform::LIBSUFFIX}", __FILE__)',
    headers:     [File.expand_path("../ext/libuv/include/#{header}", __FILE__)],
    cflags:      `llvm-config --cflags`.split(" "),
    prefixes:    ['uv_'],
    suffixes:    ['_t', '_s'],
    output:      "lib/uv#{suffix}.rb"
  }.merge(extra)
end

desc 'Generates FFI bindings'
task :ffi => :check do
  FFI::Gen.generate(default_config['uv.h'])
end

namespace :ffi do
  %w[linux sunos unix win].each do |os|
    desc "Generates bindings for #{os}"
    task(os) { FFI::Gen.generate(default_config["uv-private/uv-#{os}.h", "-#{os}"]) }
  end
end

desc 'Open a console'
task :console do
  ARGV.clear
  require 'irb'
  require 'ruvy'
  IRB.start
end

YARD::Rake::YardocTask.new(:doc) do |t|
  t.files = ['lib/**/*.rb']
  t.options = ['--markup=markdown',
               '--no-private',
               '--markup-provider=redcarpet']
end
