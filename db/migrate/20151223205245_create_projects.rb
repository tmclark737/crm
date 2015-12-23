class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.references :client, index: true
      t.decimal :amount
      t.integer :type
      t.string :street

      t.timestamps null: false
    end
    add_foreign_key :projects, :clients
  end
end
