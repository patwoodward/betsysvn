class CreditsController < ApplicationController  
before_filter :authenticate_user!
before_filter :current_user

  # GET /credits
  # GET /credits.xml
  def index
    @user = User.find_by_username(params[:username])
    @credits = @user.credits

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @credits }
    end
  end

  # GET /credits/1
  # GET /credits/1.xml
  def show
    @credit = Credit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @credit }
    end
  end

  # GET /credits/new
  # GET /credits/new.xml
  def new
    @user = User.find(params[:user_id])
    @credit = @user.credits.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @credit }
    end
  end

  # GET /credits/1/edit
  def edit
    @user = User.find(params[:user_id])
    @credit = @user.credits.find(params[:id])
  end

  # POST /credits
  # POST /credits.xml
  def create
    @user = User.find(params[:user_id]) 
    @credit = @user.credits.new(params[:credit])

    respond_to do |format|
      if @credit.save
        flash[:notice] = 'Credit was successfully created.'
        format.html { redirect_to user_credits_url }#user_credit_url(@user, @credit) }
        format.xml  { render :xml => @credit, :status => :created, :location => @credit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @credit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /credits/1
  # PUT /credits/1.xml
  def update
    @credit = Credit.find(params[:id])

    respond_to do |format|
      if @credit.update_attributes(params[:credit])
        flash[:notice] = 'Credit was successfully updated.'
        format.html { redirect_to user_credits_url }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @credit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /credits/1
  # DELETE /credits/1.xml
  def destroy
    @credit = Credit.find(params[:id])
    @credit.destroy

    respond_to do |format|
      format.html { redirect_to user_credits_url }
      format.xml  { head :ok }
    end
  end
end
