require 'open-uri'
require 'csv'


Aliment.destroy_all

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'db/agribalyse.csv'

CSV.foreach(filepath, csv_options) do |row|
  Aliment.create(
    alim_code: row[6],
    alim_nom_fr: row[7],
    alim_nom_en: row[7],
    alim_grp_nom_fr: row[3],
    alim_ssgrp_nom_fr: row[4],
    alim_ssssgrp_nom_fr: row[5],
    indic_1: row[9],
    indic_2: row[10],
    indic_3: row[11],
    indic_4: row[12],
    indic_5: row[13],
    indic_6: row[14],
    indic_7: row[15],
    indic_8: row[16],
    indic_9: row[17],
    indic_10: row[18],
    indic_11: row[19],
    indic_12: row[20],
    indic_13: row[21],
    indic_14: row[22])
end

pommedeterre = Fruitleg.create(label: "pomme de terre",
  category: "legume",
  month: ["fevrier", "decembre", "avril"]
  )
