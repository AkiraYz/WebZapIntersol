class CelldbsController < ApplicationController
  before_action :set_celldb, only: %i[ show edit update destroy ]

  # GET /celldbs or /celldbs.json
  def index
    @celldbs = Celldb.all
  end

  # GET /celldbs/1 or /celldbs/1.json
  def show
  end

  # GET /celldbs/new
  def new
    @celldb = Celldb.new
  end

  # GET /celldbs/1/edit
  def edit
  end

  # POST /celldbs or /celldbs.json
  def create
    @celldb = Celldb.new(celldb_params)

    respond_to do |format|
      if @celldb.save
        format.html { redirect_to @celldb, notice: "Celldb was successfully created." }
        format.json { render :show, status: :created, location: @celldb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @celldb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /celldbs/1 or /celldbs/1.json
  def update
    respond_to do |format|
      if @celldb.update(celldb_params)
        format.html { redirect_to @celldb, notice: "Celldb was successfully updated." }
        format.json { render :show, status: :ok, location: @celldb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @celldb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /celldbs/1 or /celldbs/1.json
  def destroy
    @celldb.destroy
    respond_to do |format|
      format.html { redirect_to celldbs_url, notice: "Celldb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_celldb
      @celldb = Celldb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def celldb_params
      params.require(:celldb).permit(:cellnumber)
    end
end
