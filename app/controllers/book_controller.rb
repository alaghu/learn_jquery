# Inheriting from Application Controller
class BookController < ApplicationController
  def show
    @chapter = params[:chapter]
  end
end
