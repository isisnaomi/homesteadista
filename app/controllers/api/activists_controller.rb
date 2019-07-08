class Api::ActivistsController < ApplicationController
  respond_to :json

  def index
    activists = Activist.order(created_at: :DESC)
    activists = activists.search_by_full_name(params[:name]) if params[:name].present?
    render json: activists
  end

  def featured
    activists = Activist.order(created_at: :DESC).limit(5)
    render json: activists
  end

  def show
    respond_with Activist.find(params[:id])
  end

  def create
    respond_with :api, Activist.create(event_params)
  end

  def destroy
    respond_with Activist.destroy(params[:id])
  end

  def update
    activist = Activist.find(params['id'])
    activist.update(event_params)
    respond_with Activist, json: activist
  end

  private

  def event_params
    params.require(:activist).permit(
      :id,
      :name,
      :last_name,
      :email,
      :country,
      :city,
      :profile_picture,
      :website,
      :occupation,
      :mission,
      :story
    )
  end
end
