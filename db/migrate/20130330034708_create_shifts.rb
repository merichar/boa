class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.integer :required_number_of_participants
      t.references :organization
      t.references :shift_type

      t.timestamps
    end
    add_index :shifts, :organization_id
  end
end
