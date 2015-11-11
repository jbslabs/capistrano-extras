namespace :console do
  desc 'Runs a console interactively with "bin/console" executable'
  task :bin_interactive do
    on roles(:app), primary: true do |host|
      env = fetch(:stage)
      execute_interactively host, "cd #{current_path} && RACK_ENV=#{env} bin/console"
    end
  end

  desc 'Runs a console interactively with "bin/rails console" executable'
  task :rails_interactive do
    on roles(:app), primary: true do |host|
      env = fetch(:stage)
      execute_interactively host, "cd #{current_path} && RACK_ENV=#{env} bin/rails console"
    end
  end
end

task :console => ['console:bin_interactive']
task :rails_console => ['console:rails_interactive']
