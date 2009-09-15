class SpecialitesController < ApplicationController
  def index
    @specialites = Specialite.all
  end
  
  def new
    @specialite = Specialite.new
  end
  
  def create
    @specialite = Specialite.new(params[:specialite])
    if @specialite.save
      flash[:notice] = "Successfully created specialite."
      redirect_to specialites_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @specialite = Specialite.find(params[:id])
  end
  
  def update
    @specialite = Specialite.find(params[:id])
    if @specialite.update_attributes(params[:specialite])
      flash[:notice] = "Successfully updated specialite."
      redirect_to specialites_url
    else
      render :action => 'edit'
    end
  end
end
