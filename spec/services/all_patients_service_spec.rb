require 'rails_helper'
require './app/services/all_patients_service.rb'

describe AllPatientsService do

  context '#call' do
    let(:not_included_patients) { create_list(:patient, 2) }
    let(:patient) do
      create(:patient,
              name: 'jimbob', 
              date_of_birth: '1981-09-18',
              address: '122 fake street',
              user_id: 1)
    end


    it 'returns posts filtered by a search input' do
      not_included_patients
      included_patient = [] << patient
      expect(AllPatientsService.new({search: 'jimbob'}).call).to(
        eq included_patient
      )
    end
  end
end