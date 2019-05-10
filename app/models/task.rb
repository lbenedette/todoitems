class Task < ApplicationRecord
  belongs_to :user

  validates :text, presence: true
  validates :completed, presence: true

  def serializer
    {
        :id => id,
        :text => text,
        :completed => completed
    }
  end
end
