class ParkingsController < ApplicationController
  # GET /parkings
  # GET /parkings.json
  def index
    @parkings = Parking.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parkings }
    end
  end

  # GET /parkings/1
  # GET /parkings/1.json
  def show
    @parking = Parking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parking }
    end
  end

  # GET /parkings/new
  # GET /parkings/new.json
  def new
    @parking = Parking.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parking }
    end
  end

  # GET /parkings/1/edit
  def edit
    @parking = Parking.find(params[:id])
  end

  # POST /parkings
  # POST /parkings.json
  def create
    @parking = Parking.new(params[:parking])

    respond_to do |format|
      if @parking.save
        format.html { redirect_to @parking, notice: 'Parking was successfully created.' }
        format.json { render json: @parking, status: :created, location: @parking }
      else
        format.html { render action: "new" }
        format.json { render json: @parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parkings/1
  # PUT /parkings/1.json
  def update
    @parking = Parking.find(params[:id])

    respond_to do |format|
      if @parking.update_attributes(params[:parking])
        format.html { redirect_to @parking, notice: 'Parking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkings/1
  # DELETE /parkings/1.json
  def destroy
    @parking = Parking.find(params[:id])
    @parking.destroy

    respond_to do |format|
      format.html { redirect_to parkings_url }
      format.json { head :no_content }
    end
  end
end
