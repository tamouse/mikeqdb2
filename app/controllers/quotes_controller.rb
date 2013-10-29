class QuotesController < ApplicationController
  def show
    @quote = Quote.find(params[:id])
  end

  def index
    @quotes = Quote.all.page(params[:page])
  end
end
