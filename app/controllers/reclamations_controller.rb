class ReclamationsController < ApplicationController
  before_action :set_reclamation, only: %i[ show edit update destroy ]

  # GET /reclamations or /reclamations.json
  def index
    @reclamations = Reclamation.all
  end

  # GET /reclamations/1 or /reclamations/1.json
  def show
  end

  # GET /reclamations/new
  def new
    @reclamation = Reclamation.new
  end

  # GET /reclamations/1/edit
  def edit
  end

  # POST /reclamations or /reclamations.json
  def create
    @reclamation = Reclamation.new(reclamation_params)

    respond_to do |format|
      if @reclamation.save
        format.html { redirect_to reclamation_url(@reclamation), notice: "Reclamation was successfully created." }
        format.json { render :show, status: :created, location: @reclamation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reclamation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reclamations/1 or /reclamations/1.json
  def update
    respond_to do |format|
      if @reclamation.update(reclamation_params)
        format.html { redirect_to reclamation_url(@reclamation), notice: "Reclamation was successfully updated." }
        format.json { render :show, status: :ok, location: @reclamation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reclamation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reclamations/1 or /reclamations/1.json
  def destroy
    @reclamation.destroy

    respond_to do |format|
      format.html { redirect_to reclamations_url, notice: "Reclamation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reclamation
      @reclamation = Reclamation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reclamation_params
      params.require(:reclamation).permit(:description, :user_id, :article_id)
    end
end
