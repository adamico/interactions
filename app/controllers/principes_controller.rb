class PrincipesController < ApplicationController
  def index
    @principes = Principe.all
  end
end
