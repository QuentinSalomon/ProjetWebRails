class HomesController < ApplicationController
  def index
  end

  def find
    @searchText = params["research"]
    @gas_stations = GasStation.all

    respond_to do |format|
      format.js
    end
  end
end
