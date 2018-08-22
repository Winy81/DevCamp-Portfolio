class Portfolio < ApplicationRecord
	include Placeholder
	validates_presence_of :title, :body #Ez a record crealasnal a kitetel, mi nem lehet nill 
    
  def self.angular #self azt jelenti hogy az aktulais portfolio itemket veszil alapul, es ezzle csinalunk egy caustom scoopt ahoz hogyt szurhessunk cim alapjan
      where(subtitle: 'Angular')
  end

  def self.rails
  	where(subtitle: 'Rails')
  end

  after_initialize :set_defaults

    def set_defaults
    	self.main_image ||= Placeholder.image_generator(height: '350', width: '650')
    	self.thumb_image ||= Placeholder.image_generator(height: '250', width: '350')
    end

end
