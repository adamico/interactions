class InteractionsController < ApplicationController
  def index
    @search = Interaction.search(params[:search])
    @interactions = @search.all
  end

  def show
  end

end
