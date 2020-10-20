class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.integer :repair_id
      t.integer :total_amount
      t.timestamps
    end
  end
end
