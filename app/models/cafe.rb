class Cafe < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :rating, presence: true, inclusion: {in: 1..5}
end
