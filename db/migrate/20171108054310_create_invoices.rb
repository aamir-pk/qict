class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.float :amount
      t.boolean :finalized
       t.references :container

      t.timestamps
    end
  end
end
