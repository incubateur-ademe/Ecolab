class Month < ApplicationRecord
  has_many :fruit_leg_saison_months, dependent: :destroy
  has_many :saisons, through: :fruit_leg_saison_months
end
