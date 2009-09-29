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

  def new
    @principe = Principe.new
  
    respond_to do |wants|
      wants.html # new.html.erb
      wants.xml  { render :xml => @principe }
    end
  end

  def create
    @principe = Principe.new(params[:principe])
  
    respond_to do |wants|
      if @principe.save
        flash[:notice] = 'Le principe actif a été créé avec succès.'
        wants.html { redirect_to(@principe) }
        wants.xml  { render :xml => @principe, :status => :created, :location => @principe }
      else
        wants.html { render :action => "new" }
        wants.xml  { render :xml => @principe.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @principe = Principe.find(params[:id])
  end

  def update
    @principe = Principe.find(params[:id])
  
    respond_to do |wants|
      if @principe.update_attributes(params[:principe])
        flash[:notice] = 'Le principe actif a été modifié avec succès.'
        wants.html { redirect_to(@principe) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @principe.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @principe = Principe.find(params[:id])
    @principe.destroy
  
    respond_to do |wants|
      wants.html { redirect_to(principes_url) }
      wants.xml  { head :ok }
    end
  end
end
