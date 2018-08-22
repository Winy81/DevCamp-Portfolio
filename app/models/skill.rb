class Skill < ApplicationRecord
	include Placeholder
	validates_presence_of :title, :percent_utilized #Ez a record crealasnal a kitel, mi nem lehet nill

    after_initialize :set_defaults

    def set_defaults
    	self.badge ||= Placeholder.image_generator(height: '250', width: '350')
    end
end
