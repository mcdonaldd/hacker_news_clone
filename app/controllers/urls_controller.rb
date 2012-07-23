class UrlsController < ApplicationController
  def index
    @url = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    
    @url = Url.new(params[:url])

    if @url.save
      redirect_to urls_path, notice: 'URL was successfully created.'
    else
      render action: "new" 
    end
      
        
  end
end
