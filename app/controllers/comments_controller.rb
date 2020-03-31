class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end
    def create
        @blog = Blog.find(params[:blog_id])
        if @blog.comments.create(commenter: params[:commenter], body: params[:body])
            redirect_to @blog
        else
            render blog_url
        end
    end
    def destroy
        
    end

    private
end
