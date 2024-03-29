class UsersController < ApplicationController

  def show
      @user = User.find(params[:id])
  end

  def new
      @user = User.new 
      @title= "Sign up"
  end
  
  def create
      @user =User.new(params[:user])
      if @user.save
	  sign_in @user
	  flash[:success] = "Welcome to Sample Application"
	  redirect_to @user 	#Redirect to user show page.
      else
	  @title = "Sign up"
	  render 'new'
      end
  end
end
