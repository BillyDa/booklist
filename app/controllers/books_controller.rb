class BooksController < ApplicationController

  def index
    # @books = Books.all

    respond_to do |format|
      format.html
    end
  end

end
