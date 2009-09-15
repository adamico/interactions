class ClassesController < ApplicationController
  def index
    @classes = Classe.all
  end
  
  def new
    @classe = Classe.new
  end
  
  def create
    @classe = Classe.new(params[:classe])
    if @classe.save
      flash[:notice] = "Successfully created classe."
      redirect_to classes_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @classe = Classe.find(params[:id])
  end
  
  def update
    @classe = Classe.find(params[:id])
    if @classe.update_attributes(params[:classe])
      flash[:notice] = "Successfully updated classe."
      redirect_to classes_url
    else
      render :action => 'edit'
    end
  end
end
