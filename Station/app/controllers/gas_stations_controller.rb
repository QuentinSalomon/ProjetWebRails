class GasStationsController < ApplicationController
  before_action :set_gas_station, only: [:show, :edit, :update, :destroy]

  # GET /gas_stations
  # GET /gas_stations.json
  def index
    @gas_stations = GasStation.all
  end

  # GET /gas_stations/1
  # GET /gas_stations/1.json
  def show
  end

  # GET /gas_stations/new
  def new
    @gas_station = GasStation.new
  end

  # GET /gas_stations/1/edit
  def edit
  end

  # POST /gas_stations
  # POST /gas_stations.json
  def create
    @gas_station = GasStation.new(gas_station_params)

    respond_to do |format|
      if @gas_station.save
        format.html { redirect_to @gas_station, notice: 'Gas station was successfully created.' }
        format.json { render :show, status: :created, location: @gas_station }
      else
        format.html { render :new }
        format.json { render json: @gas_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gas_stations/1
  # PATCH/PUT /gas_stations/1.json
  def update
    respond_to do |format|
      if @gas_station.update(gas_station_params)
        format.html { redirect_to @gas_station, notice: 'Gas station was successfully updated.' }
        format.json { render :show, status: :ok, location: @gas_station }
      else
        format.html { render :edit }
        format.json { render json: @gas_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gas_stations/1
  # DELETE /gas_stations/1.json
  def destroy
    @gas_station.destroy
    respond_to do |format|
      format.html { redirect_to gas_stations_url, notice: 'Gas station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gas_station
      @gas_station = GasStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gas_station_params
      params.require(:gas_station).permit(:latitude, :longitude, :name, :brand)
    end
end
