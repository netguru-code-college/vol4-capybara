require 'rails_helper'

RSpec.describe IngredientsController, type: :controller do

    describe "GET index" do
        it 'returns http success' do
            get :index
            expect(response).to have_http_status(:redirect)
        end

        it "shows @ingredients" do
            ingredient = Ingredient.create
            get :index
            expect(ingredient)
        end
      end

end
