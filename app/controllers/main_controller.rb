class MainController <ApplicationController
  def index
    @usa_made_products = Product.usa_made
    @most_recent_products = Product.three_most_recent 
    @most_reviews = Product.most_reviews 

    render :index
  end
end
