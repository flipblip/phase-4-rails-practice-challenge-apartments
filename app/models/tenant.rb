class Tenant < ApplicationRecord

    has_many :apartments
    has_many :leases

    validates :age, presence: true, numericality: {greater_than_or_equal_to: 18} 
end
