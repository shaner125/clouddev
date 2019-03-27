module PatientsHelper
    def update_pagination_partial_path
      if @patients.next_page
        'patients/patients_pagination_page/update_pagination'
      else
        'patients/patients_pagination_page/remove_pagination'
      end
    end
    
    def show_patient_side_menu_partial_path
      if current_user.doctor?
        'patients/show/side_menu/doctor_links'
      else
        'patients/show/side_menu/admin_links'
      end
    end
    
    def patients_show_main_content_partial_path
      if current_user.doctor?
        'patients/show/doctor_main_content'
      else
        'patients/show/admin_main_content'
      end
    end
    
    def side_menu_partial_path
        if current_user.doctor?
          'pages/index/side_menu/doctor_links'
        else
          'pages/index/side_menu/admin_links'
        end
    end
    
    def modal_content_partial_path
        if current_user.doctor?
            'patientnotes/show/doctor_modal_content'
        else
            'patientnotes/show/admin_modal_content'
        end
    end
    
    def index_modal_content_partial_path
        if current_user.doctor?
            'patients/index/doctor_modal_content'
        else
            'patients/index/admin_modal_content'
        end
    end
    
end
