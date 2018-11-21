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
    
    def nav_helper style, tag_type
    nav_links = <<~NAV
    <#{tag_type}><a href="#{root_path}" class="#{style} #{active? root_path} ">Home</a></#{tag_type}>
    <#{tag_type}><a href="#{about_me_path}" class="#{style} #{active? about_me_path}">About Me</a></#{tag_type}>
    <#{tag_type}><a href="#{contact_path}" class="#{style} #{active? contact_path}">Contact</a></#{tag_type}>
    <#{tag_type}><a href="#{blogs_path}" class="#{style} #{active? blogs_path}">Blog</a></#{tag_type}>
    <#{tag_type}><a href="#{portfolios_path}" class="#{style} #{active? portfolios_path}">Portfolio</a></#{tag_type}>
    <#{tag_type}><a href="#{tech_news_path}" class="#{style} #{active? blogs_path}">Tech-News</a></#{tag_type}>
    NAV
    
    nav_links.html_safe
    end 

    def active? path
      "active" if current_page? path
    end

    # the current_page is a ruby built in method

end
