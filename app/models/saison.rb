class Saison < ApplicationRecord
  has_many :fruit_leg_saison_months
  has_many :months, through: :fruit_leg_saison_months
end
