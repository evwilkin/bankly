class LineItemsController < ApplicationController
  def new #view
    @categories = Category.all
    @line_item = LineItem.new
  end

  def create
    puts post_params
    new_item = @current_user.line_item.create(post_params)
    redirect_to dashboard_path
  end

  def show
    @line_item = LineItem.all
    @total = 0
  end

  def show_modal

  end

  def destroy
    Line_item.find(params[:id]).destroy
    redirect_to users_show_path
  end

  private

  def post_params
    params.require(:line_item).permit(:name, :amount, :description, :date, :category_id)
  end
end
