class PatientObserver < ActiveRecord::Observer
 
  def after_update(patient)
      @name = patient.name
      @changed = "#{@name}'s personal details have been altered! Details changed: "
      if patient.user_id_changed?
          @changed = @changed + " You are now this patients doctor."
      end
      if patient.name_changed?
        @changed = @changed+" Name,"
      end
      if patient.address_changed?
         @changed = @changed+" Address,"
      end
     if patient.date_of_birth_changed?
         @changed = @changed+" Date of Birth."
     end
    
	 Notification.create(:comment => "#{@changed}", :user_id => patient.user.id)
  end
  
  def after_create(patient)
    Notification.create(:comment => "You have a new patient! Name: #{patient.name}", :user_id => patient.user.id)
 end
 
 def after_destroy(patient)
    Notification.create(:comment => "Your patient has been removed from the system. Name: #{patient.name}", :user_id => patient.user.id)
 end
 
end