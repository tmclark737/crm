class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :name
      t.date :date
      t.decimal :amount
      t.boolean :paid
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :invoices, :projects
  end
end
