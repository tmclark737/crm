class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.integer :type
      t.references :project, index: true
      t.decimal :amount

      t.timestamps null: false
    end
    add_foreign_key :transactions, :projects
  end
end
