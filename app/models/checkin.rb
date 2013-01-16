class Checkin < ActiveRecord::Base
  attr_accessible :body, :date

  belongs_to :user

  def date
    created_at.strftime("%Y-%m-%d")
  end

  def date=(x)
  end

  def self.for_date(date)
    where ["DATE(created_at) = DATE(?)", date.to_time]
  end
end
