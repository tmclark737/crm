class ChangeFieldsInDependentTasksTable < ActiveRecord::Migration
  def change
  	remove_column :dependent_tasks, :task_id
  	remove_column :dependent_tasks, :dependent_task_id
  	add_column :dependent_tasks, :parent_task_id, :integer, { null: false }
  	add_column :dependent_tasks, :child_task_id, :integer, { null: false }
  end
end
