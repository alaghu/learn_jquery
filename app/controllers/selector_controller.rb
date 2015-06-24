class SelectorController < ApplicationController
  def index
    @selectors = params[:id]
  end
end
