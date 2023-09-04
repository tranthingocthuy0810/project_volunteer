class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :number_employee
      t.string :phone_number
      t.string :website
      t.string :tax_code

      t.timestamps
    end
  end
end
