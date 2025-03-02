class AddTimesToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
    # Remove the single date column if it exists
    remove_column :events, :date if column_exists?(:events, :date)
  end
end
