class Api::TopicsController < ApplicationController

  def index
    @topics = Topic.all
  end

  def destroy
    Topic[params['id']].delete
  end
  
end
