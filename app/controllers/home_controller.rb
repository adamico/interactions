class HomeController < ApplicationController
  def index
    @search = Principe.search(params[:search])
    @principes = @search.all
  end

  def show
    render :action => params[:page]
  end

end
