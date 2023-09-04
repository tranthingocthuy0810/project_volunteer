class CreateRegistrationVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_volunteers do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.date :join_date
      t.references :active_volunteer, foreign_key: true

      t.timestamps
    end
  end
end
