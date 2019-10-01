class CommentsController < ApplicationController
  before_action :find_commentable, :find_post, only: [:create]

	def new
	  @comment = Comment.new
	end

	def create
		commentable_comments
    
	  if @comments.save
	    redirect_back(fallback_location: root_path)
	  else
	    redirect_back(fallback_location: root_path)
	  end
	end

	private

	def comment_params
	  params.require(:comment).permit(:body, :user_id)
	end

	def find_commentable
		@commentable = Comment.where(id: params[:comment_id]).first if params[:comment_id]
	end

	def find_post
		@post = Post.where(id: params[:post_id]).first if params[:post_id]
	end

	def commentable_comments
		if @commentable.present?
	  	@comments = @commentable.comments.new(comment_params)
    else
    	@comments = @post.comments.new(comment_params)
    end	
    @comments.user = current_user
	end
end
