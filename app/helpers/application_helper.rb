module ApplicationHelper

  def login_logic_helper(style)
    if current_user.is_a?(GuestUser)
      reg = link_to 'Register', new_user_registration_path, class: style
      login = link_to 'Login', new_user_session_path, class: style
      "#{reg} #{login}".html_safe
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]}, you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

end
