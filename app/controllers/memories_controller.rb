class MemoriesController < ApplicationController
  def index
    @memory_topics = current_user.memories.new(topic_id: params[:topic_id])
  end

  def create
    memory = Memory.new
    memory.user_id = current_user.id
    memory.topic_id = params[:topic_id]
    
    if memory.save
    redirect_to topics_path
    end
  end
end