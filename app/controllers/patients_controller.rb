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
    
    def new
      @patient = Patient.new
    end

    def create
      @patient = Patient.new(patient_params)
      if @patient.save 
        redirect_to patient_path(@patient) 
      else
        redirect_to root_path
      end
    end
      
    private
    
    def post_params
      params.require(:patient).permit(:name, :date_of_birth, :address)
                           .merge(user_id: current_user.id)
    end
    
    def get_patients
      AllPatientsService.new({
      search: params[:search]
      }).call
    end
end