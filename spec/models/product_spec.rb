require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  subject { FactoryBot.build(:product) }

  describe 'associations' do
    it { should have_many :ingredients }
  end

  describe 'db_columns' do
    it { should have_db_column :name }
  end
end
