require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the QuotesHelper. For example:
#
# describe QuotesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe QuotesHelper do
  before do
    @q_seeds = []
    1.upto(5) do |i|
      text = %Q{Quote #{i} - Lorem Ipsum.}
      @q_seeds << FactoryGirl.create(:quote, quote_text: text, quote_hash: text.hash)
    end
  end
  it {quotes.count.should eq 5}
  it {quotes.first.should eq @q_seeds.first}
end
