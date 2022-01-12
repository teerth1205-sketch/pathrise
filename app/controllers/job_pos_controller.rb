class JobPosController < ApplicationController
  before_action :set_job_po, only: %i[ show edit update destroy ]

  # GET /job_pos or /job_pos.json
  def index
    @job_pos = JobPo.all
  end

  # GET /job_pos/1 or /job_pos/1.json
  def show
  end

  # GET /job_pos/new
  def new
    @job_po = JobPo.new
  end

  # GET /job_pos/1/edit
  def edit
  end

  # POST /job_pos or /job_pos.json
  def create
    @job_po = JobPo.new(job_po_params)

    respond_to do |format|
      if @job_po.save
        format.html { redirect_to job_po_url(@job_po), notice: "Job po was successfully created." }
        format.json { render :show, status: :created, location: @job_po }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_pos/1 or /job_pos/1.json
  def update
    respond_to do |format|
      if @job_po.update(job_po_params)
        format.html { redirect_to job_po_url(@job_po), notice: "Job po was successfully updated." }
        format.json { render :show, status: :ok, location: @job_po }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_po.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_pos/1 or /job_pos/1.json
  def destroy
    @job_po.destroy

    respond_to do |format|
      format.html { redirect_to job_pos_url, notice: "Job po was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_po
      @job_po = JobPo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_po_params
      params.require(:job_po).permit(:ids, :title, :companyName, :url)
    end
end
