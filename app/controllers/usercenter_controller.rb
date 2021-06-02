class UsercenterController < ApplicationController
    before_action :authenticate_user!
    def index
        @products = User.find(current_user.id).products
    end
end
