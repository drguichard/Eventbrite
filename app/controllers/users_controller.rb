class UsersController < ApplicationController
    before_action :authenticate_user! #ondoit être loggué ou inscrit pour accéder au site

end
