module Sinspot
  class Application
    attr_reader :name

    def initialize(opts)
      raise "Plase, set a app name to create a new slim app" if opts.empty?

      @name = opts.shift
    end

    def build
      puts 'Creating application folder...'
      `mkdir #{@name}`

      puts 'Add Gemfile and run bundler...'
      ``
    end

    private

    def build_gemfile
    end
  end
end
