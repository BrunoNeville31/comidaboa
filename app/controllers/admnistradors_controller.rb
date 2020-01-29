class AdmnistradorsController < ApplicationController
  before_action :set_admnistrador, only: [:show, :edit, :update, :destroy]

  # GET /admnistradors
  # GET /admnistradors.json
  def index
    @admnistradors = Admnistrador.all
  end

  # GET /admnistradors/1
  # GET /admnistradors/1.json
  def show
  end

  # GET /admnistradors/new
  def new
    @admnistrador = Admnistrador.new
  end

  # GET /admnistradors/1/edit
  def edit
  end

  # POST /admnistradors
  # POST /admnistradors.json
  def create
    @admnistrador = Admnistrador.new(admnistrador_params)

    respond_to do |format|
      if @admnistrador.save
        format.html { redirect_to @admnistrador, notice: 'Admnistrador was successfully created.' }
        format.json { render :show, status: :created, location: @admnistrador }
      else
        format.html { render :new }
        format.json { render json: @admnistrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admnistradors/1
  # PATCH/PUT /admnistradors/1.json
  def update
    respond_to do |format|
      if @admnistrador.update(admnistrador_params)
        format.html { redirect_to @admnistrador, notice: 'Admnistrador was successfully updated.' }
        format.json { render :show, status: :ok, location: @admnistrador }
      else
        format.html { render :edit }
        format.json { render json: @admnistrador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admnistradors/1
  # DELETE /admnistradors/1.json
  def destroy
    @admnistrador.destroy
    respond_to do |format|
      format.html { redirect_to admnistradors_url, notice: 'Admnistrador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admnistrador
      @admnistrador = Admnistrador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admnistrador_params
      params.require(:admnistrador).permit(:nome, :email, :senha)
    end
end
