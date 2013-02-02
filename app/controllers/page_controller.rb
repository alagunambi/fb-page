class PageController < ApplicationController
  def home
    @app = FbGraph::Application.new(ENV['APP_ID'], :secret => ENV['APP_SECRET'])
  
    @page = FbGraph::Page.new('fsftn').fetch(
      :access_token => @app.get_access_token,
      :fields => :access_token
    )
    @page = @page.fetch
    @posts = @page.posts

  end
end
