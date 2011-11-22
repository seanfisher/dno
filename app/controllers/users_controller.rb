class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      login(params[:user][:username], params[:user][:password], 0)
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end

end
