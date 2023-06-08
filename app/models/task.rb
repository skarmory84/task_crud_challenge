class Task < ApplicationRecord
  enum status: [:active, :in_progress, :inactive]
end
