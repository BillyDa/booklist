class BooksController < ApplicationController

  def index
    @books = Books.all

    respond_to do |format|
      format.html
      format.text

      format.csv do
        render plain: Book.generate_csv(@books)
      end

      format.json do
        render json: @books
      end
    end
  end
end



# ask for help on this
