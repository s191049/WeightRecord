class Member < ApplicationRecord
  has_many :weight_records, -> { order(created_at: :asc)}, dependent: :destroy

  validates :name, presence: true
  #validates :height, presence: true
  
  def self.member_select
    hash = {}
    Member.all.each do |mem|
      hash[mem.name] = mem.id
    end
    hash
  end

end
