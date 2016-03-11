class CategorysController < ApplicationController
  def show
    @allcategory = current_user.category.all
  end
end
