class MyfoldersController < ApplicationController
    
    def index
     @topics = Topic.all.current_user
     @comment = Comment.new
    end
    
    
    def destroy
     @topic = Topic.find(params[:id])
     @topic.destroy
     redirect_to myfolder_path
    end
    
end
