class Property < ApplicationRecord
belongs_to :assessment

has_many :property_materials
has_many :materials, through: :property_materials

def to_s
  id
end

end