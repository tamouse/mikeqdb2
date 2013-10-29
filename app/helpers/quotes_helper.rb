module QuotesHelper
  def quotes
    @quotes ||= Quote.all
  end

  def quote
    @quote ||= Quote.all.first
  end
end
