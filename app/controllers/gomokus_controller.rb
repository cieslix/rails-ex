class GomokusController < ApplicationController
  before_action :set_gomoku, only: [:show, :edit, :update, :destroy]

  # GET /gomokus
  # GET /gomokus.json
  def index
    @gomokus = Gomoku.all
  end

  # GET /gomokus/1
  # GET /gomokus/1.json
  def show
  end

  # GET /gomokus/new
  def new
    @gomoku = Gomoku.new
  end

  # GET /gomokus/1/edit
  def edit
  end

  # POST /gomokus
  # POST /gomokus.json
  def create
    @gomoku = Gomoku.new(gomoku_params)

    respond_to do |format|
      if @gomoku.save
        format.html { redirect_to @gomoku, notice: 'Gomoku was successfully created.' }
        format.json { render :show, status: :created, location: @gomoku }
      else
        format.html { render :new }
        format.json { render json: @gomoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gomokus/1
  # PATCH/PUT /gomokus/1.json
  def update
    respond_to do |format|
      if @gomoku.update(gomoku_params)
        format.html { redirect_to @gomoku, notice: 'Gomoku was successfully updated.' }
        format.json { render :show, status: :ok, location: @gomoku }
      else
        format.html { render :edit }
        format.json { render json: @gomoku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gomokus/1
  # DELETE /gomokus/1.json
  def destroy
    @gomoku.destroy
    respond_to do |format|
      format.html { redirect_to gomokus_url, notice: 'Gomoku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gomoku
      @gomoku = Gomoku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gomoku_params
      params.require(:gomoku).permit(:data)
    end
end
