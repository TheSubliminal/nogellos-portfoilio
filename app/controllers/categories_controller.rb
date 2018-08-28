class CategoriesController < ApplicationController
  def index
    @portrait = Image.find_by(category_id: 1)
    @illustration = Image.find_by(category_id: 2)
    @still_life = Image.find_by(category_id: 3)
  end
  
  def show
    @images = Image.where(category_id: params[:id])
  end
end