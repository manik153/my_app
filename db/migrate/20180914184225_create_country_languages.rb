class CreateCountryLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :country_languages do |t|
      t.string :country_code
      t.string :language_code

      t.timestamps
    end
  end
end
