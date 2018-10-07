module ApplicationHelper
	def sample_help
		"<hr>".html_safe
		#mivel a p html ahoz hogy lefusson kell moge a .html_safe
	end

	def login_helper(style)
		if current_user.is_a?(GuestUser)
         (link_to "Sign_Up", new_user_registration_path, class: style) +
         " ".html_safe +
         (link_to "Login", new_user_session_path, class: style)
        else
          link_to "Logout", destroy_user_session_path, method: :delete, class: style
        end
    end

    def source_hepler(layout_name)
    	if session[:source]
          greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} part of the Site"
          content_tag(:p, greeting, class:"source-greeting")
      end
    end 

    def copyright_generator
      DevcampViewTool::Renderer.copyright 'Adam Nemeth', 'All rights reserved'
    end

end
