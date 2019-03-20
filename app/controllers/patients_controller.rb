class PatientsController < ApplicationController
    def show
        @patient = Patient.find(params[:id])
        @patientnotes = Patientnote.where(patient_id: @patient.id)
    end
end
