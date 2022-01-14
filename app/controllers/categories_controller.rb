class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    @categories = current_user.categories.includes(activity_categories: :activity)
  end

  def show
    @category = Category.find_by_id(params[:id])
    @activity_categories = @category.activity_categories.includes(:category, :activity).order(created_at: :desc)
  end

  def new
    @category = Category.new
  end

  def edit; end

  def create
    @category = current_user.categories.new(category_params)
    respond_to do |format|
      format.html do
        if @category.save
          flash[:notice] = 'Category was successfully created.'
        else
          flash[:alert] = "Failed to add category - #{@category.errors.full_messages.first}"
        end
        redirect_to categories_path
      end
    end
  end

  def destroy
    category = Category.find(params[:id])
    if category.destroy
      flash[:notice] = 'category deleted!'
    else
      flash[:alert] = "Failed to remove category - #{recipe.errors.full_messages.first}"
    end
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
