module PatientsHelper
    def update_pagination_partial_path
      if @patients.next_page
        'patients/patients_pagination_page/update_pagination'
      else
        'patients/patients_pagination_page/remove_pagination'
      end
    end
end
