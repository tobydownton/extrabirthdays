class User < ActiveRecord::Base
  validates :date_of_birth, :date => true
end
