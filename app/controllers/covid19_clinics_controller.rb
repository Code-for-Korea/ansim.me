class Covid19ClinicsController < ApplicationController
  before_action :set_covid19_clinic, only: [:show, :edit, :update, :destroy]

  # GET /covid19_clinics
  # GET /covid19_clinics.json
  def index
    @covid19_clinics = Covid19Clinic.all
  end

  # GET /covid19_clinics/1
  # GET /covid19_clinics/1.json
  def show
  end

  # GET /covid19_clinics/new
  def new
    @covid19_clinic = Covid19Clinic.new
  end

  # GET /covid19_clinics/1/edit
  def edit
  end

  # POST /covid19_clinics
  # POST /covid19_clinics.json
  def create
    @covid19_clinic = Covid19Clinic.new(covid19_clinic_params)

    respond_to do |format|
      if @covid19_clinic.save
        format.html { redirect_to @covid19_clinic, notice: 'Covid19 clinic was successfully created.' }
        format.json { render :show, status: :created, location: @covid19_clinic }
      else
        format.html { render :new }
        format.json { render json: @covid19_clinic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /covid19_clinics/1
  # PATCH/PUT /covid19_clinics/1.json
  def update
    respond_to do |format|
      if @covid19_clinic.update(covid19_clinic_params)
        format.html { redirect_to @covid19_clinic, notice: 'Covid19 clinic was successfully updated.' }
        format.json { render :show, status: :ok, location: @covid19_clinic }
      else
        format.html { render :edit }
        format.json { render json: @covid19_clinic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /covid19_clinics/1
  # DELETE /covid19_clinics/1.json
  def destroy
    @covid19_clinic.destroy
    respond_to do |format|
      format.html { redirect_to covid19_clinics_url, notice: 'Covid19 clinic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_covid19_clinic
      @covid19_clinic = Covid19Clinic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def covid19_clinic_params
      params.require(:covid19_clinic).permit(:province, :distring, :name, :phone, :sampling, :address, :latitude, :longitude)
    end
end
