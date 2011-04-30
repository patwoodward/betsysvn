class UsersController < ApplicationController
before_filter :authenticate_user!

  def index
    @user = current_user
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user }
    end


  # GET /credits/1
  # GET /credits/1.xml
  def show
    @user = User.find(params[:user_id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @credit }
    end
 
end
  end
 end 

