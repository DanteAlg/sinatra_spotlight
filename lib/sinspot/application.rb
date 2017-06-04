module Sinspot
  class Application
    attr_reader :app_name, :templates_path

    def initialize(opts)
      raise "Plase, set a app name to create a new slim app" if opts.empty?

      @app_name = opts.shift
      @templates_path = "#{File.expand_path(File.dirname(__FILE__))}/templates"
    end

    def build
      create_app_folder
      copy_templates
    end

    private

    def create_app_folder
      puts 'Creating application directories...'
      ['', 'app', 'app/controllers', 'app/views', 'app/assets', 'app/assets/stylesheets', 'config'].each do |dir|
        `mkdir #{app_name}/#{dir}`
      end
    end

    def copy_templates
      [
        'gemfile', 'config.ru', 'README.md', 'config/environment.rb',
        'app/views/index.erb', 'app/controllers/application_controller.rb',
        'app/controllers/home_controller.rb', 'app/assets/stylesheets/reset.css',
        'app/assets/stylesheets/home.css'
      ].each do |file_path|
        puts "Copy #{file_path} to application dir"
        FileUtils.cp([templates_path, file_path].join('/'), [app_name, file_path].join('/'))
      end
    end
  end
end
