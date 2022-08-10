class User < ApplicationRecord
    validates :email, presence: true
    validates :age, numericality: {greater_than: 17, less_than: 151}
    scope :find_valid, ->{where("age > ?", 20)} #simula el where de sql
end
