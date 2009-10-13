class HomeController < ApplicationController
  def index
    # render the landing page
    @search = Principe.search(params[:search])
    @principes = @search.all
  end

  def show
    render :action => params[:page]
  end

end
