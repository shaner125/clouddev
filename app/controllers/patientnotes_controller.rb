class PatientnotesController < ApplicationController
    
# GET /movies/1/reviews
def index
# For URL like /movies/1/reviews
# Get the movie with id=1
@patient = Patient.find(params[:patient_id])
# Access all reviews for that movie
@patientnotes = @patient.patientnotes
end

end
