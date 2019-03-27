class PatientnotesController < ApplicationController
    

  def index
  @patient = Patient.find(params[:patient_id])
  @patientnotes = @patient.patientnotes
  end
  
  def show
      @patient = Patient.find(params[:patient_id])
      @patientnote = @patient.patientnotes.find(params[:id])
  end
  
  def new
      @patient = Patient.find(params[:patient_id])
      @patientnote = @patient.patientnotes.new
  end

  def create
    unless current_user.doctor?
        redirect_to root_path, :alert => "Only Doctor Staff can add patients patient notes!"
    end
    @patient = Patient.find(params[:patient_id])
    @patientnote = @patient.patientnotes.new(patientnote_params)
    if @patientnote.save 
      redirect_to patient_path(@patient)
    else
      redirect_to patient_path
    end
  end
  

  def edit
  @patient = Patient.find(params[:patient_id])
  @patientnote = @patient.patientnotes.find(params[:id])
  end


  def update
  @patient = Patient.find(params[:patient_id])
  @patientnote = @patient.patientnotes.find(params[:id])
  if @patientnote.update_attributes(params.require(:patientnote).permit(:title, :content))
  redirect_to patient_path(@patient)
  else
  render :action => "edit"
  end
  end

  def destroy
  @patient = Patient.find(params[:patient_id])
  @patientnote = @patient.patientnotes.find(params[:id])
  @patientnote.destroy
  respond_to do |format|
  format.html { redirect_to patient_path(@patient)}
  format.xml { head :ok }
  end
  end

  
  private
  
  def patientnote_params
      params.require(:patientnote).permit(:date, :title, :content)
  end

end
