# frozen_string_literal: true

FactoryBot.define do
    factory :ingredient do
        exp_date { '21/02/2019' }
        quantity { '1' }
        product_id { '1' }
        unit { 'kg' }
        user_id { '1' }
    end
end