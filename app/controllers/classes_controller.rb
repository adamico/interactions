class ClassesController < ApplicationController

  def index
    @classes = Classe.all
  
    respond_to do |wants|
      wants.html # index.html.erb
      wants.xml  { render :xml => @classess }
    end
  end

  def show
    @classe = Classe.find(params[:id])
    @pnames = @classe.principes.collect { |p| p.name }
  
    respond_to do |wants|
      wants.html # show.html.erb
      wants.xml  { render :xml => @classe }
    end
  end

  def new
    @classe = Classe.new
  
    respond_to do |wants|
      wants.html # new.html.erb
      wants.xml  { render :xml => @classe }
    end
  end

  def create
    @classe = Classe.new(params[:classe])
  
    respond_to do |wants|
      if @classe.save
        flash[:notice] = "La classe d'interaction a été créée avec succès."
        wants.html { redirect_to(@classe) }
        wants.xml  { render :xml => @classe, :status => :created, :location => @classe }
      else
        wants.html { render :action => "new" }
        wants.xml  { render :xml => @classe.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @classe = Classe.find(params[:id])
  end

  def update
    @classe = Classe.find(params[:id])
  
    respond_to do |wants|
      if @classe.update_attributes(params[:classe])
        flash[:notice] = "La classe d'interaction a été modifiée avec succès."
        wants.html { redirect_to(@classe) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @classe.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @classe = Classe.find(params[:id])
    @classe.destroy
  
    respond_to do |wants|
      wants.html { redirect_to(classes_url) }
      wants.xml  { head :ok }
    end
  end
end
