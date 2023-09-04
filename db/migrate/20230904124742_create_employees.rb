class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.date :birth_day
      t.string :email
      t.integer :gender, default: 1
      t.date :join_date
      t.string :password_digest
      t.string :phone_number
      t.boolean :is_admin, default: false
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
