class CreatePayrolls < ActiveRecord::Migration
  def change
    create_table :payrolls do |t|
      t.string :tasks
      t.references :transaction, index: true

      t.timestamps null: false
    end
    add_foreign_key :payrolls, :transactions
  end
end
