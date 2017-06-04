module Sinspot
  class Commands
    DEFINED_ACTIONS = ['version', 'new']
    ALIASES = {
      '-v' => 'version',
    }

    def self.call(action, opts)
      action = ALIASES[action] || action
      raise "\"#{action}\" not is a Sinatra Spotlight method!" unless DEFINED_ACTIONS.include?(action)

      new.send(action, opts)
    end

    def version(opts)
      return puts(Sinspot::VERSION) if opts.include?('--verbose')
      puts "Sinatra Spotlight version #{Sinspot::VERSION}"
    end

    def new(opts)
      Sinspot::Application.new(opts).build
    end
  end
end
