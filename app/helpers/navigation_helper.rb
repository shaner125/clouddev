module NavigationHelper

  def collapsible_links_partial_path
    if user_signed_in? && current_user.doctor?
      'layouts/navigation/collapsible_elements/doctor_signed_in_links'
    elsif user_signed_in? && current_user.admin?
      'layouts/navigation/collapsible_elements/admin_signed_in_links'
    else
      'layouts/navigation/collapsible_elements/non_signed_in_links'
    end
  end
  
end