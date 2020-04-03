class UsersController < ApplicationController
    before_action :authenticate_user!
    def new
        @user = User.new
    end
    def create
        @user = User.create(user_params)
        if @user.save
            flash[:success] = "Register success"
            redirect_to root_path
        else
            flash[:success] = "Register failed"
            render :new
        end
    end

    def show
        @user = User.find_by id: params[:id]
    end
    
    private
    def user_params
        params.require(:session).permit(:name, :password, :password_confirmation)
    end
end
