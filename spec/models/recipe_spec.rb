require 'rails_helper'

RSpec.describe Recipe, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  subject { FactoryBot.build(:recipe) }

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :link }
  end


  describe 'db_columns' do
    it { should have_db_column :name }
    it { should have_db_column :link }
    it { should have_db_column :photo }
    it { should have_db_column :ingredients }
    it { should have_db_column :food_cat }
    it { should have_db_column :diet_cat }
  end
end
