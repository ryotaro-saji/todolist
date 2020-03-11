class Manner < ApplicationRecord
  belongs_to :user, optional:true
  validates :method, presence: true, length: { maximum: 255 }
  validates :like, presence: true, length: { maximum: 255 }
end
