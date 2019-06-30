class CommentsController < ApplicationController
  def create
    comment = Comment.create(text: comment_params[:text], tweet_id: comment_params[:tweet_id], user_id: current_user.id)
    redirect_to "/tweet/#{comment.tweet.id}"
  end

 private
 def comment_params
   params.require(:comment).permit(:text, :tweet_id)
 end
end 
