class PatientsController < ApplicationController
    def show
        @patient = Patient.find(params[:id])
        @patientnotes = Patientnote.where(patient_id: @patient.id)
    end
    
    def index
        @patients = get_patients.paginate(page: params[:page])
        respond_to do |format|
          format.html
          format.js { render partial: 'patients/patients_pagination_page' }
        end
    end
    
    private
    
    def get_patients
        search = params[:search]
        
          if search.blank?
            patients = Patient.limit(30)
          elsif search.present?
            patients = Patient.search(search)
          else
          end
    end
end