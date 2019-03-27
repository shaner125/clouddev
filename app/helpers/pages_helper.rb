module PagesHelper
    
    def main_content_partial_path
        if current_user.doctor?
          'pages/index/doctor_main_content'
        else
          'pages/index/admin_main_content'
        end
    end
    
    def side_menu_partial_path
        if current_user.doctor?
          'pages/index/side_menu/doctor_links'
        else
          'pages/index/side_menu/admin_links'
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
