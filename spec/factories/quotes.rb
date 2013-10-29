# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quote do
    quote_text "MyText"
    quote_hash 1
  end
end
