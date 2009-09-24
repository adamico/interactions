class PrincipesController < ApplicationController
  def index
    @principes = Principe.all
  end

  def show
    @principe = Principe.find(params[:id])
  
    respond_to do |wants|
      wants.html # show.html.erb
      wants.xml  { render :xml => @principe }
    end
  end
end
