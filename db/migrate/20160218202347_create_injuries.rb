class CreateInjuries < ActiveRecord::Migration
  def change
    create_table :injuries do |t|
      t.integer :incident_id
      t.string :injury_type
      t.string :affected_body_part
      t.string :treatment
      t.references :incidents, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
