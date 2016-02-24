class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :first_name
      t.string :last_name
      t.string :department
      t.string :job_title
      t.date :date_of_hire
      t.text :description
      t.date :date_of_incident
      t.date :date_reported
      t.text :location_of_incident
      t.string :affected_body_part
      t.string :type_of_injury
      t.string :type_of_incident
      t.string :treatment
      t.string :property_damage
      t.string :supervisor_last_name
      t.string :supervisor_first_name
      t.text :suggested_corrective_action
      t.timestamps
    end
  end
end
