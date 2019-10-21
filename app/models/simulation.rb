class Simulation < ApplicationRecord

before_save :set_result

def set_result
  match_fruit_to_user_input = Fruitleg.where(label: ask_fruit).first
  #check if ask_month is in month attribute array from fruitleg model
  if match_fruit_to_user_input.month.include?(ask_month)
  #if yes, then
  self.result = "👍🏼 Go ! aucun souci pour te régaler de #{ask_fruit} en #{ask_month.capitalize}"
  #if no, then
  else self.result = "👎🏼 Bof ! Je te conseille plutôt ..."
  end
end


end
