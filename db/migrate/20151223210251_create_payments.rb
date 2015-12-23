class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :project, index: true
      t.references :invoice, index: true
      t.references :transaction, index: true

      t.timestamps null: false
    end
    add_foreign_key :payments, :projects
    add_foreign_key :payments, :invoices
    add_foreign_key :payments, :transactions
  end
end
