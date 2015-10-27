require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems."
  exit e.status_code
end

require 'rake/testtask'
Rake::TestTask.new :spec do |t|
  t.test_files = Dir['spec/*_spec.rb']
end

task :default => :spec
