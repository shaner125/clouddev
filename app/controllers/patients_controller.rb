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
    end
end