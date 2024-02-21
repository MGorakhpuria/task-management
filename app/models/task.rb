class Task < ApplicationRecord
  
  # Validation
  validates :title, :description, :due_date, presence: true  

  # Associations
  belongs_to :user


  self.per_page = 5
  enum :status, [ :to_do, :in_progress, :done ]
end
