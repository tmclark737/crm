class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :rank
      t.boolean :complete
      t.date :date
      t.decimal :time
      t.references :employee, index: true
      t.boolean :qa
      t.date :qa_date
      t.boolean :paid
      t.date :paid_date
      t.decimal :amount
      t.references :transaction, index: true
      t.references :project, index: true
      t.integer :step
      t.string :before
      t.string :after
      t.string :count
      t.boolean :available

      t.timestamps null: false
    end
    add_foreign_key :tasks, :employees
    add_foreign_key :tasks, :transactions
    add_foreign_key :tasks, :projects
  end
end
