class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages, id: false do |t|
      t.string :code
      t.string :name
      t.string :native_name

      t.timestamps
    end
    add_index :languages, :code, unique: true
  end
end
