class UsersController < ApplicationController
    before_action :authenticate_user! #ondoit être loggué ou inscrit pour accéder au site

    def show 
        @user=User.find(params[:id])
        @events=Event.where(administrator_id:@user.id)
    end 
end
