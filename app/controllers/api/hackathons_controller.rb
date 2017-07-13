class Api::HackathonsController < ApplicationController

  def index
    @hackathons = Hackathon.all
  end

  def show
    @hackathon = current_hackathon
  end

  def create
    @hackathon = Hackathon.create(permitted_params)
  end

  def update
    @hackathon = current_hackathon.update(permitted_params)
  end

  def destroy
    current_hackathon.destroy
    render json: true
  end

  private

  def current_hackathon
    Hackathon[params[:id]]
  end
  #
  def permitted_params
    params.require(:hackathon).permit(:name, :hold_date, :topic_id, :speaker_id)
  end

end
