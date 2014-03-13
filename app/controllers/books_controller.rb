class BooksController < ApplicationController
  def index
    # Add some fake Books
    fake_books = [{id: 3, title: "Perks of Being a Wallflower", description: "a coming-of-age epistolary novel"},{id: 4, title: "The Giver", description: "set in a society which is at first presented as a utopian society and gradually appears more and more dystopian"}]
    books = Book.all
    # respond to the type of request
    respond_to do |f|
        f.html  {render :layout => false }
        f.json  {render :json => books}
    end
  end

  def show
    render layout: false
  end

  def create
    book_params = params[:book].permit(:title, :description)
    book = Book.create(book_params)

    respond_to do |f|
      f.html { redirect_to books_path }
      f.json {render json: book}
    end
  end

end
