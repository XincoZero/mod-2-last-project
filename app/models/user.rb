class User < ApplicationRecord
    has_many :repairs 
    has_many :dealerships, through: :repairs
end
