class Skill < ApplicationRecord
	validates_presence_of :title, :percente_utilized #Ez a record crealasnal a kitel, mi nem lehet nill
end
