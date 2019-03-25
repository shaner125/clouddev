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
    
    def edit
    @patient = Patient.find(params[:id])
    end


  def update
  @patient = Patient.find(params[:id])
  if @patient.update_attributes(params.require(:patient).permit(:name, :date_of_birth, :address))
  redirect_to patient_path(@patient)
  else
  render :action => "edit"
  end
  end

  def destroy
  @patient = Patient.find(params[:id])
  @patient.destroy
  respond_to do |format|
  format.html { redirect_to root_path}
  format.xml { head :ok }
  end
  end
      
    private
    
    def patient_params
      params.require(:patient).permit(:name, :date_of_birth, :address)
                           .merge(user_id: current_user.id)
    end
    
    def get_patients
      AllPatientsService.new({
      search: params[:search]
      }).call
    end
end