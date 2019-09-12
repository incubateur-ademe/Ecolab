class Kpi < ApplicationRecord
  has_many :metrics, dependent: :destroy
  has_many :ingredient, through: :metrics
end
