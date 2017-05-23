FactoryGirl.define do

  sequence :beer_type do |n|
    %w(IPA brown_ale pilsner lager lambic hefeweizen)[n-1]
  end

  factory :beer do
    beer_type
  end

end