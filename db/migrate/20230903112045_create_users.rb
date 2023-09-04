class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :address
      t.string :account_number
      t.string :activation_digest
      t.string :activated
      t.string :activated_at
      t.string :remember_digest

      t.timestamps
    end
  end
end
