module NewsHelper
    def side_menu_partial_path
        if current_user.doctor?
          'pages/index/side_menu/doctor_links'
        else
          'pages/index/side_menu/admin_links'
        end
    end
end