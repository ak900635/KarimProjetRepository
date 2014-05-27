class ChpaitresController < ApplicationController
  before_action :set_chpaitre, only: [:show, :edit, :update, :destroy]

  # GET /chpaitres
  # GET /chpaitres.json
  def index
    @chpaitres = Chpaitre.all
  end

  # GET /chpaitres/1
  # GET /chpaitres/1.json
  def show
  end

  # GET /chpaitres/new
  def new
    @chpaitre = Chpaitre.new
  end

  # GET /chpaitres/1/edit
  def edit
  end

  # POST /chpaitres
  # POST /chpaitres.json
  def create
    @chpaitre = Chpaitre.new(chpaitre_params)

    respond_to do |format|
      if @chpaitre.save
        format.html { redirect_to @chpaitre, notice: 'Chpaitre was successfully created.' }
        format.json { render :show, status: :created, location: @chpaitre }
      else
        format.html { render :new }
        format.json { render json: @chpaitre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chpaitres/1
  # PATCH/PUT /chpaitres/1.json
  def update
    respond_to do |format|
      if @chpaitre.update(chpaitre_params)
        format.html { redirect_to @chpaitre, notice: 'Chpaitre was successfully updated.' }
        format.json { render :show, status: :ok, location: @chpaitre }
      else
        format.html { render :edit }
        format.json { render json: @chpaitre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chpaitres/1
  # DELETE /chpaitres/1.json
  def destroy
    @chpaitre.destroy
    respond_to do |format|
      format.html { redirect_to chpaitres_url, notice: 'Chpaitre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chpaitre
      @chpaitre = Chpaitre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chpaitre_params
      params.require(:chpaitre).permit(:name, :numero)
    end
end
