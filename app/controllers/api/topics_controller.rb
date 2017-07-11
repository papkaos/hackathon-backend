class Api::TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def create
    Topic.create(name: params[:topic][:name])
  end

  def destroy
    Topic[params['id']].delete
  end
  
end
