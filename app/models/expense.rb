class Expense < ActiveRecord::Base
  belongs_to :transaction
end
