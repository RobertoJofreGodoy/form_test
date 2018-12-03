class Assessment < ApplicationRecord
    has_many :properties, dependent: :destroy

    def to_s
        id
    end
end
