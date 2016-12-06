class Task < ApplicationRecord
  belongs_to :task_list
  belongs_to :user

  validates :title, :priority, :due_date, :task_list, presence: true
  validates :priority, inclusion: {in: 1..10, message: "must be between 1 and 10"}

  scope :completed, ->{ where(is_completed_toggle: true).order('updated_at DESC') } #wasn't sure if we wanted the most recently added task first or the most recently completed task first, so I used the updated_at attribute to hopefully get the most recently completed task
  scope :pending, -> { where(is_completed_toggle: false). order('created_at ASC') }
end
