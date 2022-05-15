class Api::SessionsController < ApplicationController
    def create
        user_email = params[:user][:email]
        user_password = params[:user][:password]
        @user = User.find_by_credentials(user_email,user_password)
    
        if @user
          login!(@user)
          render "api/users/show"
        else
          render json: ["Invalid username/password"], status: 401
        end
      end
    
      def destroy
        @user = current_user
        if @user
          logout!
          render json: {}
        else
          render json: ["No user is signed in"], status: 404
        end
      end
end
