class UsersController < ApplicationController

    def edit
    end

    
    def show
      @user = User.find(params[:id])
      @prototypes = @user.prototypes
    end

    def update
        current_user.update(user_params)
      end
    
      private
    
      def user_params
        params.require(:user).permit(:nicname, :email,:profile,:occupation,:position)


      end
end