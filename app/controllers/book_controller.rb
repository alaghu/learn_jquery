# Inheriting from Application Controller
class BookController < ApplicationController
  def index
    redirect_to book_path(1)
  end

  def show
    @chapter = params[:chapter]
  end
end
