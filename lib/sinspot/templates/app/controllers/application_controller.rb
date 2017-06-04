class ApplicationController < Sinatra::Base
  set :root, File.dirname(__FILE__)

  register Sinatra::AssetPack

=begin
  assets do
    serve '/css', from: '../assets/stylesheets/'

    css_compression :simple
  end
=end

  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)

  # don't enable logging when running tests
  configure :production, :development do
    enable :logging
  end
end
