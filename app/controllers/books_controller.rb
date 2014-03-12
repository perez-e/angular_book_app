class BooksController < ApplicationController
  def index
    # Add some fake Books
    fake_books = [{id: 3, title: "Perks of Being a Wallflower", description: "a coming-of-age epistolary novel"},{id: 4, title: "The Giver", description: "set in a society which is at first presented as a utopian society and gradually appears more and more dystopian"}]

    # respond to the type of request
    respond_to do |f|
        f.html  {render :layout => false }
        f.json  {render :json => fake_books}
    end
  end

  def show
    render layout: false
  end


end
