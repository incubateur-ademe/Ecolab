# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Kpi.destroy_all
Metric.destroy_all

tableau = %w(fraise, champignon, puree, petits pois, poulet, viande)
kpi = %w(CO2, NH4+, SO2)

fraise = Ingredient.create!(name: "fraise",
                            category: "fruit",
                            description: "fraise gm")

champignon = Ingredient.create!(name: "champignon",
                            category: "legumes",
                            description: "champi magique")

puree = Ingredient.create!(name: "puree pdt",
                            category: "plat",
                            description: "bonne puree")

poulet = Ingredient.create!(name: "poulet",
                            category: "viande",
                            description: "viande blanche")

puts "created #{Ingredient.count} ingredients"

co2 = Kpi.create!(label: "CO2",
                            unit: "g")

nh4 = Kpi.create!(label: "NH4+",
                          unit: "g")

so2 = Kpi.create!(label: "SO2",
                          unit: "g")

puts "created #{Kpi.count} indicateurs"

metric1 = Metric.create!(value: 3,
                         ingredient: fraise,
                         kpi: co2)

metric2 = Metric.create!(value: 4,
                         ingredient: champignon,
                         kpi: co2)

metric3 = Metric.create!(value: 2.3,
                         ingredient: puree,
                         kpi: co2)

metric4 = Metric.create!(value: 7,
                         ingredient: poulet,
                         kpi: co2)

metric5 = Metric.create!(value: 2,
                         ingredient: poulet,
                         kpi: nh4)

metric6 = Metric.create!(value: 1,
                         ingredient: champignon,
                         kpi: nh4)

puts "created #{Metric.count} mesures"



