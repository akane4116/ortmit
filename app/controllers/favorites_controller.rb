class FavoritesController < ApplicationController
    
    def index
      @favorite_topics = current_user.favorite_topics
    end
    
    def create
     favorite = Favorite.new
     favorite.user_id = current_user.id
     favorite.topic_id = params[:topic_id]
     
     if favorite.save
        redirect_to topics_path
     end
    end
    
    def destroy
     @favorite_topics = current_user.favorites.find_by(topic_id: params[:topic_id])
     if @favorite_topics.destroy
     redirect_to topics_path
     end
    end 
end
