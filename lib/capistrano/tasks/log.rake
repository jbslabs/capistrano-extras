namespace :log do
  desc 'Tails a log file from the "log" directory'
  task :tail do
    on roles(:app), primary: true do |host|
      logfile = pick_file('log')

      puts "\n----- Tailing log/#{logfile} -----\n\n"
      execute_interactively host, "cd #{current_path} && tail -f log/#{logfile}"
    end
  end
end

task :log => ['log:tail']
