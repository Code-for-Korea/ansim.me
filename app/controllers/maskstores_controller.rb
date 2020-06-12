class MaskstoresController < ApplicationController
  before_action :set_maskstore, only: [:show, :edit, :update, :destroy]

  # GET /maskstores
  # GET /maskstores.json
  def index
    @maskstores = Maskstore.all
  end

  # GET /maskstores/1
  # GET /maskstores/1.json
  def show
  end

  # GET /maskstores/new
  def new
    @maskstore = Maskstore.new
  end

  # GET /maskstores/1/edit
  def edit
  end

  # POST /maskstores
  # POST /maskstores.json
  def create
    @maskstore = Maskstore.new(maskstore_params)

    respond_to do |format|
      if @maskstore.save
        format.html { redirect_to @maskstore, notice: 'Maskstore was successfully created.' }
        format.json { render :show, status: :created, location: @maskstore }
      else
        format.html { render :new }
        format.json { render json: @maskstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maskstores/1
  # PATCH/PUT /maskstores/1.json
  def update
    respond_to do |format|
      if @maskstore.update(maskstore_params)
        format.html { redirect_to @maskstore, notice: 'Maskstore was successfully updated.' }
        format.json { render :show, status: :ok, location: @maskstore }
      else
        format.html { render :edit }
        format.json { render json: @maskstore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maskstores/1
  # DELETE /maskstores/1.json
  def destroy
    @maskstore.destroy
    respond_to do |format|
      format.html { redirect_to maskstores_url, notice: 'Maskstore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maskstore
      @maskstore = Maskstore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def maskstore_params
      params.require(:maskstore).permit(:type, :code, :name, :address, :latitude, :longitude)
    end
end
