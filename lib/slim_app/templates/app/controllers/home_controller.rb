class HomeController < ApplicationController
  # show      get       '/resource/:id {}'
  # create    post      '/resource {}'
  # destroy   delete    '/resource/:id {}'
  # update    put/patch 'resource/:id {}'

  # Index
  get '/' do
    erb :index
  end
end
