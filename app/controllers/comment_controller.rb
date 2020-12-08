class CommentController < ApplicationController
    def new
     @comment = Comment.new
    end
    
    def create
     @comment = Comment
    end
    
    def destroy
      super
    end
    
end
