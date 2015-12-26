class Task < ActiveRecord::Base
  belongs_to :employee
  #belongs_to :transaction
  belongs_to :project



  has_and_belongs_to_many :child_tasks, class_name: 'Task', join_table: :task_dependencies, foreign_key: :parent_task_id, association_foreign_key: :child_task_id
  has_and_belongs_to_many :parent_tasks, class_name: 'Task', join_table: :task_dependencies, foreign_key: :child_task_id, association_foreign_key: :parent_task_id





end
