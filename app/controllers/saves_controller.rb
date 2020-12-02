class SavesController < ApplicationController
  def index
    @save_topics = current_user.save_topics
  end

  def create
    save = Save.new
    save.user_id = current_user.id
    save.topic_id = params[:topic_id]
  end
end
