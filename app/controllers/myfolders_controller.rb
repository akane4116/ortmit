class MyfoldersController < ApplicationController
    
    def index
     # ログインユーザーの投稿を表示させる
     @topics = current_user.topics
     @comment = Comment.new
    end
    
    
    def destroy
     @topic = Topic.find(params[:id])
     @topic.destroy
     redirect_to myfolder_path
    end
    
end
