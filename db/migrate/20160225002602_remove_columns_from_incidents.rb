class RemoveColumnsFromIncidents < ActiveRecord::Migration
  def change
    remove_column :incidents, :affected_body_part, :string
    remove_column :incidents, :type_of_injury, :string
    remove_column :incidents, :treatment, :string
  end
end
