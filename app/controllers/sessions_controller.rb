class SessionsController < ApplicationController
  def new; end

    def create
      user = User.find_by(mail: params[:mail])
      if user && user.authenticate(params[:pass])
        session[:user_id] = user.id
        redirect_to root_path
      else
        flash.now.alert = "該当するデータがありませんでした"
        render :new
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path
    end

end
