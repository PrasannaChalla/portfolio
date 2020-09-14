class HomeController < ApplicationController

    def profile
        render 'profile'
    end

    def search_profile
        first_name = params[:first_name]
        @users = User.where({first_name: first_name})
        render 'search'
    end

end
