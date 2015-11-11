## Pick a file from its directory
def pick_file(directory)
  # parse files
  file_names = capture("cd #{current_path} && ls -1 #{directory}").split("\n")
  files = file_names.map.with_index { |f, i| [i, f] }.to_h
  file_options = files.map { |i, f| "  #{i} - #{f}" }.join("\n")

  index = -1

  # pick an index
  loop do
    ask(:index, "\n#{file_options}\n")
    index = Integer fetch(:index) rescue nil

    break if files.key?(index)
  end

  # return filename
  files[index].strip
end

## Execute a command on a given host
def execute_interactively(host, command)
  user     = host.user
  hostname = host.hostname
  port     = host.port || 22

  # execute in shell
  exec "ssh -l #{user} #{hostname} -p #{port} -t '#{command}'"
end
