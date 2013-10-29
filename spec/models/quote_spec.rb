require 'spec_helper'

describe Quote do
  it "should retrieve a quote" do
    q = FactoryGirl.create(:quote)
    qx = Quote.where(quote_text: q.quote_text).first
    qx.should_not be_nil
    qx.quote_text.should eq q.quote_text
    qx.quote_hash.should eq q.quote_hash
  end

end
