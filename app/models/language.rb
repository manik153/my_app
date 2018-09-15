class Language < ApplicationRecord
	self.primary_key = 'code'

	has_many :country_languages, :primary_key => 'code', :foreign_key => 'language_code'
	has_many :countries, through: :country_languages
end
