class CreateCorrectiveActions < ActiveRecord::Migration
  def change
    create_table :corrective_actions do |t|
      t.integer :incident_id
      t.text :action
      t.date :expected_completion_date
      t.date :actual_completion_date
      t.boolean :complete
      t.references :incidents, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
