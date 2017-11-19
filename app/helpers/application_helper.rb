module ApplicationHelper

  def login_logic_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      reg = link_to 'Register', new_user_registration_path
      login = link_to 'Login', new_user_session_path
      "#{reg} #{login}".html_safe
    end
  end

end
