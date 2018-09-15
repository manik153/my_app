class Country < ApplicationRecord
	self.primary_key = 'code'

	has_one :continent
	has_many :country_languages, :primary_key => 'code' , :foreign_key => 'country_code'
	has_many :languages, through: :country_languages
end
