class HomeController < ApplicationController
  def index
    @map_urls = MapUrl.all
  end
end
