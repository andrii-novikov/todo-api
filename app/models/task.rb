class Task < ApplicationRecord
  belongs_to :project

  validates :name, presence: true, length: { minimum: 5 }
  validates :project, presence: true
  enum status: [:on_hold, :in_progress, :completed]
end
