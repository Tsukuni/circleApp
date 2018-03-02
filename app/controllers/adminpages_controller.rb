class AdminpagesController < ApplicationController
  layout 'admin'
  before_action :login_check, only: %i(index)
  def index
  end
  private
    def login_check
      if session[:user_id].nil?
        redirect_to sessions_path
      end
    end
end
