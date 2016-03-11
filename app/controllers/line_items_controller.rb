class LineItemsController < ApplicationController
  def new
    @line_item = LineItem.new
  end

  def create
    @line_item = @current_user.line_item.create(post_params)
    redirect_to line_items_show_path
  end

  def show
    @line_item = LineItem.all
  end

  private

  def post_params
    params.require(:line_item).permit(:name, :amount, :description, :date)
  end
end
