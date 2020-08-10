class User < ApplicationRecord
  has_many :events, through: attendance
end
