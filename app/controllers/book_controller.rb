# Inheriting from Application Controller
class BookController < ApplicationController
  def index
    redirect_to book_selector_path
  end

  def selector
    @chapter = params[:chapter]
  end

  def intro
    @chapter = params[:chapter]
  end
end
