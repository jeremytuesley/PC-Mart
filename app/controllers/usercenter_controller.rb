class UsercenterController < ApplicationController
    before_action :authenticate_user!
    def index
        @products = User.find(current_user.id).products
        @owner = true
    end

    def wishlist
        @products = User.find(current_user.id).wishlist_products
        @owner = false
    end
end
