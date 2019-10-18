class AlimentsController < ApplicationController

  def index
    aliments = Aliment.order(created_at: :desc)
    if params[:query].present?
      sql_query = "aliments.alim_nom_fr ILIKE :query OR aliments.alim_grp_nom_fr ILIKE :query OR aliments.alim_ssgrp_nom_fr ILIKE :query OR aliments.alim_ssssgrp_nom_fr ILIKE :query"
      @aliments = aliments.where(sql_query, query: "%#{params[:query]}%")
    else
      @aliments = aliments.all
    end
  end

end
