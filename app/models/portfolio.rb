class Portfolio < ApplicationRecord
	validates_presence_of :title, :body #Ez a record crealasnal a kitel, mi nem lehet nill 
end
