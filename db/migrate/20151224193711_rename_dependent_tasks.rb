class RenameDependentTasks < ActiveRecord::Migration
  def change	
  	rename_table :dependent_tasks, :task_dependencies
  end
end
