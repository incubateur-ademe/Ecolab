class Ingredient < ApplicationRecord
  has_many :metrics, dependent: :destroy
  has_many :kpis, through: :metrics
end
