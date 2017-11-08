class CreateContainers < ActiveRecord::Migration[5.1]
  def change
    create_table :containers do |t|
      t.string :code
      t.string :size
      t.references :shipping_line

      t.timestamps
    end
  end
end
