class PrincipesController < ApplicationController
  def index
    @principes = Principe.all
  end
  
  def new
    @principe = Principe.new
  end
  
  def create
    @principe = Principe.new(params[:principe])
    if @principe.save
      flash[:notice] = "Successfully created principe."
      redirect_to principes_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @principe = Principe.find(params[:id])
  end
  
  def update
    @principe = Principe.find(params[:id])
    if @principe.update_attributes(params[:principe])
      flash[:notice] = "Successfully updated principe."
      redirect_to principes_url
    else
      render :action => 'edit'
    end
  end
end
