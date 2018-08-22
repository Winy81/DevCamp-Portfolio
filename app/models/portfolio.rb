class Portfolio < ApplicationRecord
	validates_presence_of :title, :body #Ez a record crealasnal a kitetel, mi nem lehet nill 
    
  def self.angular #self azt jelenti hogy az aktulais portfolio itemket veszil alapul, es ezzle csinalunk egy caustom scoopt ahoz hogyt szurhessunk cim alapjan
      where(subtitle: 'Angular')
  end

  def self.rails
  	where(subtitle: 'Rails')
  end

end
