class AddDependentTasksTable < ActiveRecord::Migration
  def change
  	create_table :dependent_tasks, id: false do |t|
  		t.integer :task_id
  		t.integer :dependent_task_id
  	end
  end
end


