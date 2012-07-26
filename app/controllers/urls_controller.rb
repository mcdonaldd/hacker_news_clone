class UrlsController < ApplicationController
  def index
    @url = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    
    if signed_in?
      @url = Url.new(:link => params[:url][:link], :user_id => self.current_user.id)
    else
      @url = Url.new(params[:url])
    end 

    if @url.save
      redirect_to urls_path, notice: 'URL was successfully created.'
    else
      render action: "new" 
    end
      
        
  end
  
  def show
     @user = current_user  
     @url = Url.find(params[:id]) 
   
    end
  
    def edit
      @url = Url.new(params[:url])
    end
  
    def update
    @user = current_user 
   
    @url = Url.find(params[:id])
    if @user.id == @url.user.id
      @url.update_attributes(params[:url])
      redirect_to(@user)
    else
      redirect_to (@user), notice: "You're not this user....jerk."
    end
      
    
  end

end
