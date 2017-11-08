class AddInTimeToContainer < ActiveRecord::Migration[5.1]
  def change
    add_column :containers, :in_time, :datetime
  end
end
