class PatientsController < ApplicationController
    def show
        @patient = Patient.find(params[:id])
        @patientnotes = Patientnote.where(patient_id: @patient.id)
    end
    
    def index
        @allpatients = get_patients.paginate(page: params[:page])
    end
    
    private
    
    def get_patients
        Patient.limit(20).all
        
        search = params[:search]
        
          if search.blank?
            patients = Patient.limit(20).all
          elsif search.present?
            patients = Patient.search(search)
          else
          end
    end
end