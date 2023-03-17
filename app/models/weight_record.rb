class WeightRecord < ApplicationRecord
  belongs_to :member

  validates :member_id, presence: true
  validates :date, presence: true, uniqueness: { scope: :member_id, message: "指定の日付の記録は存在します。" }
  validates :weight, presence: true
  
  def self.member_week(mem_id)
    weight_record_array = []
    ((Date.today - 6)..Date.today).each do |d|
      weight_record_array << self.where(date: d, member_id: mem_id)
    end
    weight_record_array
  end

  def start_time
    self.date.to_time.to_datetime
  end

end
