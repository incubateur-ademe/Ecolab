class Simulation < ApplicationRecord

before_save :set_result

def set_result
  @ok = false
  match_fruit_to_user_input = Fruitleg.where(label: ask_fruit).first
  #check if ask_month is in month attribute array from fruitleg model
  if match_fruit_to_user_input.month.include?(ask_month)
  #if yes, then
  self.result = "👍🏼 Go ! aucun souci pour te régaler de #{ask_fruit} en #{ask_month.capitalize}"
  @ok = true
  #if no, then
  else
    @ok = false
    self.result = "👎🏼 Bof ! Je te conseille plutôt de choisir parmi : #{Fruitleg.select { |fl| fl.month.include?(ask_month) }.shuffle.first(3).map { |fl2| [].push(fl2.label) }.flatten }"
  end
end


end
