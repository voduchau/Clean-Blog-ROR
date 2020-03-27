class BlogController < ApplicationController
    def index
        @blog=Blog.all
    end
    def new
        @blog=Blog.new()
    end
    def show
        @blog=Blog.find(params[:id])
    end

    def create
        @blog=Blog.new(blog_params)
        if @blog.save
            redirect_to blog_path(@blog.id)
        else
            render "new"
        end
    end

    private
    def blog_params
        params.require(:blog).permit(:title, :body)
    end
end
