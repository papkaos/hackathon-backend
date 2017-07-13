class Api::SpeakersController < ApplicationController

  def index
    @speakers = Speaker.all
  end

  def show
    @speaker = current_speaker
  end

  def create
    @speaker = Speaker.create(permitted_params)
  end

  def update
    @speaker = current_speaker.update(permitted_params)
  end

  def destroy
    current_speaker.destroy
    render json: true
  end

  private

  def current_speaker
    Speaker[params[:id]]
  end

  def permitted_params
    params.require(:speaker).permit(:fullname, :email, :password, :is_admin)
  end

end
