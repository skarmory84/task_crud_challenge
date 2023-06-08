class Task < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: true }
  validates :description, length: { maximum: 100 }
  validate :name_cannot_be_updated_if_in_progress

  enum status: [:active, :in_progress, :inactive]
  
  private

    def name_cannot_be_updated_if_in_progress
      if name_was != name && status == 'in_progress'
        errors.add(:name, 'cannot be updated if status is in progress')
      end
    end

end
