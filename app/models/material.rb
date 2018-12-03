class Material < ApplicationRecord
has_many :property_materials
has_many :properties, through: :property_materials
end