# Capistrano::Extras

Capistrano tasks for interactive console and log tailing.

The gem works only with Capistrano 3!

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-extras'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-extras

## Usage

Add to your Capfile:

    require 'capistrano/extras'

Run the `bin/console` executable in your `current_path`:

    cap <environment> console

Tail the logs from the `log` directory (you can pick a file):

    cap <environment> log

## Contributing

1. Fork it ( http://github.com/jbslabs/capistrano-extras/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
