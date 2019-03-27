module PatientnotesHelper
    
    def modal_content_partial_path
        if current_user.doctor?
            'patientnotes/show/doctor_modal_content'
        else
            'patientnotes/show/admin_modal_content'
        end
    end
    
end
