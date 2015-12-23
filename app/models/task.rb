class Task < ActiveRecord::Base
  belongs_to :employee
  belongs_to :transaction
  belongs_to :project
end
