class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ["not-started", "in-progress", "complete"] }
  STATUS_LIST = [['Not started', 'not-started'],
                 ['In progress', 'in-progress'],
                 ['Complete', 'complete']
  ]

  def badge_color
    case status
    when 'not-started'
      'secondary'
    when 'in-progress'
      'info'
    when 'complete'
      'success'
    end
  end
end
