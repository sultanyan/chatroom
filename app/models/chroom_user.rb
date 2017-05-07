class ChroomUser < ApplicationRecord
  belongs_to :chroom
  belongs_to :user
end
