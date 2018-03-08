class OriEventPageController < ApplicationController
  def index
    @ori_pages = OriPage.all
  end

  def show
    @ori_page = OriPage.find(params[:id])
  end
end
