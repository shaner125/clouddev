require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the PatientsHelper. For example:
#
# describe PatientsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe PatientsHelper, type: :helper do
  pending "add some examples to (or delete) #{__FILE__}"
  
  context '#update_pagination_partial_path' do
  it "returns an update_pagination partial's path" do
    patients = double('patients', :next_page => 2)
    assign(:patients, patients)
    expect(helper.update_pagination_partial_path).to(
      eq 'patients/patients_pagination_page/update_pagination'
    )
  end

  it "returns a remove_pagination partial's path" do
    patients = double('patients', :next_page => nil)
    assign(:patients, patients)
    expect(helper.update_pagination_partial_path).to(
      eq 'patients/patients_pagination_page/remove_pagination'
    )
  end
end
end
