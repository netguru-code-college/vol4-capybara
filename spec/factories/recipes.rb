# frozen_string_literal: true

FactoryBot.define do
    factory :recipe do
        name { 'SomeName' }
        link { 'https://somelink.com' }
        photo { 'photo' }
        ingredients { 'ingredients' }
        food_cat { 'breakfast' }
        diet_cat { 'vegan' }
    end
end
