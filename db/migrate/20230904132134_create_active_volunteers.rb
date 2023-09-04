class CreateActiveVolunteers < ActiveRecord::Migration[5.2]
  def change
    create_table :active_volunteers do |t|
      t.string :name
      t.string :description
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
