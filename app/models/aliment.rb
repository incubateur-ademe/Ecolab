class Aliment < ApplicationRecord
  dependent: :destroy
end
