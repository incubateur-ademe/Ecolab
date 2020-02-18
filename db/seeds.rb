require 'open-uri'
require 'csv'


Aliment.destroy_all

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"', headers: true }
filepath    = 'db/agribalyse.csv'

CSV.foreach(filepath, csv_options) do |row|
  Aliment.create(
    alim_code: row[0],
    alim_nom_fr: row[7],
    alim_nom_en: row[8],
    alim_grp_nom_fr: row[4],
    alim_ssgrp_nom_fr: row[5],
    alim_ssssgrp_nom_fr: row[6],
    indic_1: row[14],
    indic_2: row[15],
    indic_3: row[16],
    indic_4: row[17],
    indic_5: row[18],
    indic_6: row[19],
    indic_7: row[20],
    indic_8: row[21],
    indic_9: row[22],
    indic_10: row[23],
    indic_11: row[24],
    indic_12: row[25],
    indic_13: row[26],
    indic_14: row[27],
    indic_15: row[28],
    indic_16: row[29],
    score: row[13],
    dqr: row[30])
end



