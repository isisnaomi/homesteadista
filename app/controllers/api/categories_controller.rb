class Api::CategoriesController < ApplicationController
  respond_to :json

  def index
      respond_with Category.order(created_at: :DESC)
  end

  def show
    respond_with Category.find(params[:id])
  end

  def activists
    category = Category.where(name: params['category']).first
    activists = Activist.where(category_id: category.id)
    render json: activists
  end

  def create
    respond_with :api, Category.create(event_params)
  end

  def destroy
    respond_with Category.destroy(params[:id])
  end

  def update
    category = Category.find(params['id'])
    category.update(event_params)
    respond_with Category, json: category
  end

  private

  def event_params
    params.require(:category).permit(
      :id,
      :name,
      :picture,
      :description
    )
  end
end
