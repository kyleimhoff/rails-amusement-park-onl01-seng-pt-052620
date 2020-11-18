<<<<<<< HEAD
class Attraction < ActiveRecord::Base
    has_many :rides
  has_many :users, :through => :rides
  end
=======
class Attraction < ApplicationRecord
  has_many :rides
  has_many :users, :through => :rides
end
>>>>>>> b4f61e3f557b1abea4b72f0069efd9c696d74495
