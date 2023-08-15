class Pet < ApplicationRecord
    validates :color, :breed, presence: true
        
    def found_at
        return self.created_at.strftime('%A, %b %d')
    end

    def specifics
        return "#{self.color.capitalize} #{self.breed}"
    end
end
