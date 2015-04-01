namespace :console do
  desc 'Runs a console interactively with "bin/console" executable'
  task :interactive do
    on roles(:app), primary: true do |host|
      env = fetch(:stage)
      execute_interactively host, "cd #{current_path} && RACK_ENV=#{env} bin/console"
    end
  end
end

task :console => ['console:interactive']
