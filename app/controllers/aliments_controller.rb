class AlimentsController < ApplicationController

  def index
    if params[:sort].present? && params[:query].present?
    aliments = Aliment.order(params[:sort] => :asc)
      sql_query = "aliments.alim_nom_fr ILIKE :query OR aliments.alim_grp_nom_fr ILIKE :query OR aliments.alim_ssgrp_nom_fr ILIKE :query OR aliments.alim_ssssgrp_nom_fr ILIKE :query"
      @aliments = aliments.where(sql_query, query: "%#{params[:query]}%")
    elsif params[:query].present?
      aliments = Aliment.order(created_at: :asc)
      sql_query = "aliments.alim_nom_fr ILIKE :query OR aliments.alim_grp_nom_fr ILIKE :query OR aliments.alim_ssgrp_nom_fr ILIKE :query OR aliments.alim_ssssgrp_nom_fr ILIKE :query"
      @aliments = aliments.where(sql_query, query: "%#{params[:query]}%")
    else
      @aliments = aliments.all
    end
  end

  def show
    @aliment = Aliment.find(params[:id])
  end
end
