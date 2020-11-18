<<<<<<< HEAD
class UsersController < ApplicationController
    before_action :logged_in?, except: [:new, :create]
    
      def new
        @user = User.new
      end
    
      def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
      end
    
      def edit
        @user = User.find(params[:id])
      end
    
      def update
        @user = User.find(params[:id])
        if @user.save
          @user.update(user_params)
          redirect_to user_path
        else
          redirect_to edit_user_path
        end
      end
    
      def show
        @user = User.find(params[:id])
        @message = params[:message] if params[:message]
        @message ||= false
      end
    
      private
    
      def user_params
        params.require(:user).permit(:name, :happiness, :nausea, :height, :tickets, :admin, :password)
      end
    end
=======
class SessionController < ApplicationController
  skip_before_action :verify_user_is_authenticated, only: [:new,:create]
  def new
    @user = User.new
  end

  def create
    if @user = User.find_by(name:params[:user][:name])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def destroy
    session.delete("user_id")
    redirect_to root_path
  end
end
>>>>>>> b4f61e3f557b1abea4b72f0069efd9c696d74495
