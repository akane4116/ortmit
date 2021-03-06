class TopicsController < ApplicationController
  def index
    @topics = Topic.all.includes(:favorite_users, :memory_users)
    @comment = Comment.new
  end
  
  
  def new
    @topic = Topic.new
  end
  
  
  def show
    @topic = Topic.find(params[:id])
    @comments = @topic.comments
    @comment = current_user.comments.new
  end
  
  def create
    @topic = current_user.topics.new(topic_params)
    
    if @topic.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  def update
    redirect_to topic_path
  end
  
  def destroy
    redirect_to topic_path
  end
  
  
 private
  def topic_params
   params.require(:topic).permit(:image, :description)
  end
 
end