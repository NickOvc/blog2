class PoztsController < ApplicationController
  load_and_authorize_resource
  before_action :set_pozt, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /pozts
  # GET /pozts.json
  def index
    @q = Pozt.search(params[:q])
    @pozts = @q.result
  end

  # GET /pozts/1
  # GET /pozts/1.json
  def show
  end

  # GET /pozts/new
  def new
    @pozt = Pozt.new
  end

  # GET /pozts/1/edit
  def edit
  end

  # POST /pozts
  # POST /pozts.json
  def create
    @pozt = Pozt.new(pozt_params)
    @pozt.user_id = current_user.id
    respond_to do |format|
      if @pozt.save
        format.html { redirect_to @pozt, notice: 'Pozt was successfully created.' }
        format.json { render :show, status: :created, location: @pozt }
      else
        format.html { render :new }
        format.json { render json: @pozt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pozts/1
  # PATCH/PUT /pozts/1.json
  def update
    respond_to do |format|
      if @pozt.update(pozt_params)
        format.html { redirect_to @pozt, notice: 'Pozt was successfully updated.' }
        format.json { render :show, status: :ok, location: @pozt }
      else
        format.html { render :edit }
        format.json { render json: @pozt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pozts/1
  # DELETE /pozts/1.json
  def destroy
    @pozt.destroy
    respond_to do |format|
      format.html { redirect_to pozts_url, notice: 'Pozt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pozt
      @pozt = Pozt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pozt_params
      params.require(:pozt).permit(:title, :body, :user_id, :all_tags)
    end
end
