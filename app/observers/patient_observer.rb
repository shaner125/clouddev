class PatientObserver < ActiveRecord::Observer
 
  def after_update(patient)
      @name = patient.name
      @changed = "#{@name}'s personal details have been altered! Details changed: "
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
 
end