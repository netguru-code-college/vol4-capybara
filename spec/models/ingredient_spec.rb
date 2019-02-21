require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  subject { FactoryBot.build(:ingredient) }

  describe 'associations' do
    it { should belong_to :user }
    it { should belong_to :product }
  end

  describe 'db_columns' do
    it { should have_db_column :exp_date }
    it { should have_db_column :quantity }
    it { should have_db_column :unit }
    it { should have_db_column :product_id }
    it { should have_db_column :user_id }
  end
end
