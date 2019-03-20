require 'rails_helper'

RSpec.describe Patient, type: :model do
  context 'Associations' do
    it 'belongs_to user' do
      association = described_class.reflect_on_association(:user).macro
      expect(association).to eq :belongs_to
    end
    it 'has_many patientnotes' do
      association = described_class.reflect_on_association(:patientnotes)
      expect(association.macro).to eq :has_many
    end
  end
end

context 'Scopes' do
  it 'default_scope orders by descending created_at' do
    first_post = create(:patient)
    second_post = create(:patient)
    expect(Post.all).to eq [second_patient, first_patient]
  end
end