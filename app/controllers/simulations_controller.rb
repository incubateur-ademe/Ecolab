class SimulationsController < ApplicationController
before_action :set_simulation, only: [:show, :edit, :update, :destroy]

  def new
    @simulation = Simulation.new()
  end

  def create
    #create a simulation where the user has given a month and the name of a fruit or vege
    @simulation = Simulation.new(ask_month: params["simulation"]["ask_month"][1],
      ask_fruit: params["simulation"]["ask_fruit"])
    @simulation.save
  end

  def update
  end

  private

  def set_simulation
    @simulation = Simulation.find(params[:id])
  end

end
