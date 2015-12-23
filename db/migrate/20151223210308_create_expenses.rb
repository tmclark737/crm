class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.references :transaction, index: true

      t.timestamps null: false
    end
    add_foreign_key :expenses, :transactions
  end
end
