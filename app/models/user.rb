class User < ApplicationRecord
  has_many :accounts
  has_many :bills

end
