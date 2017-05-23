require 'rails_helper'

RSpec.describe BeersController, type: :controller do

  # по-идее, другие тесты должны заниматься проверкой view,
  # но в нашем тривиальном случае проверим все здесь
  render_views
  
  context 'GET #show' do

    # noinspection RailsParamDefResolve
    before(:context) do
      # noinspection RubyResolve
      FactoryGirl.create_list(:beer, 6)
    end

    it 'Should display pages with different information about different types of beer' do
      allowed_beer_types = %w(IPA brown_ale pilsner lager lambic hefeweizen)
      allowed_beer_types.each do |beer_type|
        get :show, :params => { :beer_type => beer_type }
      	expect(response.body).to include beer_type
      end
    end

    it 'Any other type of beer specified should generate a 404 status code.' do
      invalid_beer_types = %w(12345 qwerty)
      invalid_beer_types.each do |beer_type|
        expect do
          get :show, :params => { :beer_type => beer_type }
        end.to raise_error ActionController::RoutingError

      end
    end

  end
  
end
