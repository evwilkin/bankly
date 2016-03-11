class LineItemsController < ApplicationController
  def new #view
    @categories = Category.all
    @line_item = LineItem.new
  end

  def create
    puts post_params
    new_item = @current_user.line_item.create(post_params)
    redirect_to line_items_show_path
  end

  def show
    @line_item = LineItem.all
  end

  private

  def post_params
    params.require(:line_item).permit(:name, :amount, :description, :date, :category_id)
  end
end
