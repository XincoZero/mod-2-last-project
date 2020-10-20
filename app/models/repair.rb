class Repair < ApplicationRecord
    belongs_to :user
    belongs_to :dealership
    has_many :invoices
end
