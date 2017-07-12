class Api::TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def show
    @topic = current_topic
  end

  def create
    @topic = Topic.create(permitted_params)
  end

  def update
    @topic = current_topic.update(permitted_params)
  end
  
  def destroy
    current_topic.delete
    render json: true
  end

  private

  def current_topic
    Topic[params[:id]]
  end

  def permitted_params
    params.require(:topic).permit(:name)
  end
  
end
