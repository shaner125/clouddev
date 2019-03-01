require 'rails_helper'

RSpec.describe Patientnote, type: :model do
  context 'Associations' do
    it 'belongs_to patient' do
      association = described_class.reflect_on_association(:patient).macro
      expect(association).to eq :belongs_to
    end
  end
end
