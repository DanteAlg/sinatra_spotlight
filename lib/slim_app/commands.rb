module SlimApp
  class Commands
    DEFINED_ACTIONS = ['version', 'new']
    ALIASES = {
      '-v' => 'version',
    }

    def self.call(action, opts)
      action = ALIASES[action] || action
      raise "\"#{action}\" not is a slim_app method!" unless DEFINED_ACTIONS.include?(action)

      new.send(action, opts)
    end

    def version(opts)
      puts "Slim App version #{SlimApp::VERSION}"
    end

    def new(opts)
    end
  end
end
