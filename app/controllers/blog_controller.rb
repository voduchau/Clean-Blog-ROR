class BlogController < ApplicationController
    before_action :find_params , only: [:show, :edit, :update, :destroy]
    def index
        @blogs = Blog.all
    end

    def new
        @blog = Blog.new()
    end

    def show

    end

    def edit

    end

    def create
        @blog = Blog.new(blog_params)
        if @blog.save
            redirect_to blog_path(@blog)
        else
            render :new
        end
    end

    def update
        if @blog.update(blog_params)
            redirect_to @blog
        else
            render :edit
        end
    end

    def destroy
        if @blog.destroy
            redirect_to root_path
        else
            flash[:notice] = "Post successfully created"
            render :show    
        end
    end

    private
    
    def find_params
        @blog = Blog.find(params[:id])
    end

    def blog_params
        params.require(:blog).permit( :title, :body, :image, :remote_image_url)
    end
end