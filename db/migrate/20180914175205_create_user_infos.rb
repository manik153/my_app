class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_infos do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.text :info
      t.string :contact_number
      t.string :gender
      t.date :dob
      t.references :country, foreign_key: true
      t.text :languages_known

      t.timestamps
    end
  end
end
