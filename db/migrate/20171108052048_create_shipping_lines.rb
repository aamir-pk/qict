class CreateShippingLines < ActiveRecord::Migration[5.1]
  def change
    create_table :shipping_lines do |t|
      t.string :code
      t.string :string
      t.string :name

      t.timestamps
    end
  end
end
