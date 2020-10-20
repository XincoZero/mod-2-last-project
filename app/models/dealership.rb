class Dealership < ApplicationRecord
    has_many :repairs 
    has_many :users, through: :repairs
end
