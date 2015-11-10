# Inheriting from Application Controller
class BookController < ApplicationController
  def selector
    @chapter = params[:chapter]
  end

  def intro
    @chapter = params[:chapter]
  end
end
