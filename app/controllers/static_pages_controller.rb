class StaticPagesController < ApplicationController
  def index
  end
end

#First Product in product table, set to variable featured_product
class StaticPagesController < ApplicationController

    def landing_page
        @featured_product = Product.first
    end

end