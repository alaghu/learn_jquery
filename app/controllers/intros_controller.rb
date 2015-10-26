# Inheriting from Application controller.
class IntrosController < ApplicationController
  before_action :set_intro, only: [:show, :edit, :update, :destroy]

  def index
    @intro_anand = 'hello introduction'
  end
end
