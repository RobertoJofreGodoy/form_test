class PropertyMaterial < ApplicationRecord
  belongs_to :property
  belongs_to :material
end
