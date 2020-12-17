class SavesController < ApplicationController
  def index
    @save_topics = current_user.saves.new(topic_id: params[:topic_id])
  end

  def create
    save = Save.new
    save.user_id = current_user.id
    save.topic_id = params[:topic_id]
    
    if save.save
    redirect_to topics_path
    end
  end
end

