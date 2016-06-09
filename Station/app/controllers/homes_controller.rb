class HomesController < ApplicationController
  def index
  end

  def find
    @searchText = params["research"]
    @gas_stations = GasStation.all
    @research = Array.wrap(nil)
    @gas_stations.each do |station|
      puts(station)
      if station.name.to_s.downcase.include?(@searchText.to_s.downcase)
        @research.append(station)
      end
    end

    respond_to do |format|
      format.js
    end
  end
end
