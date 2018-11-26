begin
  require "rom/sql/rake_task"
rescue LoadError
  # rom-sql is optional
end

namespace :db do
  desc 'Set up ROM gateways'
  task :setup do
    ROM::Rails::Railtie.load_initializer
    ROM::Rails::Railtie.create_configuration
  end
end
