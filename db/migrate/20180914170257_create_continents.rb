class CreateContinents < ActiveRecord::Migration[5.2]
  def change
    create_table :continents, id: false do |t|
      t.string :code, null: false
      t.string :name

      t.timestamps
    end
    add_index :continents, :code, unique: true
  end
end
