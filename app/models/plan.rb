class Plan < ApplicationRecord
  has_many :events, dependent: :destroy # イベントとの関連付け

  def events_by_date
    (start_date..end_date).each_with_object({}) do |date, hash|
      hash[date] = events.where(date: date)
    end
  end
end
