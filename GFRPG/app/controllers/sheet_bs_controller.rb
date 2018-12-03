class SheetBsController < ApplicationController
  before_action :set_sheet_b, only: [:show, :edit, :update, :destroy]

  # GET /sheet_bs
  # GET /sheet_bs.json
  def index
    @sheet_bs = SheetB.all
  end

  # GET /sheet_bs/1
  # GET /sheet_bs/1.json
  def show
  end

  # GET /sheet_bs/new
  def new
    @sheet_b = SheetB.new
  end

  # GET /sheet_bs/1/edit
  def edit
  end

  # POST /sheet_bs
  # POST /sheet_bs.json
  def create
    @sheet_b = SheetB.new(sheet_b_params)

    respond_to do |format|
      if @sheet_b.save
        format.html { redirect_to @sheet_b, notice: 'Sheet b was successfully created.' }
        format.json { render :show, status: :created, location: @sheet_b }
      else
        format.html { render :new }
        format.json { render json: @sheet_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheet_bs/1
  # PATCH/PUT /sheet_bs/1.json
  def update
    respond_to do |format|
      if @sheet_b.update(sheet_b_params)
        format.html { redirect_to @sheet_b, notice: 'Sheet b was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheet_b }
      else
        format.html { render :edit }
        format.json { render json: @sheet_b.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheet_bs/1
  # DELETE /sheet_bs/1.json
  def destroy
    @sheet_b.destroy
    respond_to do |format|
      format.html { redirect_to sheet_bs_url, notice: 'Sheet b was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheet_b
      @sheet_b = SheetB.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheet_b_params
      params.fetch(:sheet_b, {})
    end
end
