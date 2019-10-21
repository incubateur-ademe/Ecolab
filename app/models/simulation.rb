class Simulation < ApplicationRecord

before_save :set_result

def set_result
  match_fruit_to_user_input = Fruitleg.where(label: ask_fruit).first
  #check if ask_month is in month attribute array from fruitleg model
  if match_fruit_to_user_input.month.include?(ask_month)
  #if yes, then
  result = "Go ! aucun souci pour manger/cuisiner #{ask_fruit} en #{ask_month}"
  #if no, then
  else result = "Bof !"
  end
end


end
