class Payment < ActiveRecord::Base
  belongs_to :project
  belongs_to :invoice
  belongs_to :transaction
end
