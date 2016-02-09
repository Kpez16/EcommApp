
#First Product in product table, set to variable featured_product
class StaticPagesController < ApplicationController

    def landing_page
        @products = Product.all
    end

end