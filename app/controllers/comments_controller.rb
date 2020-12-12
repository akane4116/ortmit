class CommentsController < ApplicationController
    def index
        @topic = Topic.find_by(:params[topic_id])
    end
    
    
    def new
     @comment = Comment.new
     @topic = Topic.find_by(id: params[:topic_id])
    end
    
    def create
        @topic = Topic.find(params[:topic_id])
        @commemt = @topic.comments.new(comment_params)
        @comment.user_id = current_user.id
        @comment.content = params[:comment][:content]
    end
    
    def destroy
      super
    end
    
    private
     def comment_params
        params.require(:comment).permit(:name,:content)
        
     end
end
