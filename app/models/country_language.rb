class CountryLanguage < ApplicationRecord
	belongs_to :country, :foreign_key => 'country_code', :primary_key => 'code'
	belongs_to :language, :foreign_key => 'language_code', :primary_key => 'code'
end