module DefaultPageContent
	extend ActiveSupport::Concern

	included do
 	before_action :set_page_defaults
    end
#dinamikus cim beallitas a bongeszo fulben...
    def set_page_defaults
		@page_title = "Adam's Portfolio website"
		@seo_keywords = "Adam Nemeth portfolio"
	end

 end