class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries, id:false do |t|
      t.string :code
      t.string :name
      t.string :native_name
      t.string :phone_code
      t.string :continent_code
      t.string :capital
      t.string :currency

      t.timestamps
    end
    add_index :countries, :code, unique: true
  end
end
