class DeterminationsController < ApplicationController
  before_action :set_determination, only: [:show, :edit, :update, :destroy]

  # GET /determinations
  # GET /determinations.json
  def index
    @determinations = Determination.all
  end

  # GET /determinations/1
  # GET /determinations/1.json
  def show
  end

  # GET /determinations/new
  def new
    @determination = Determination.new
  end

  # GET /determinations/1/edit
  def edit
  end

  # POST /determinations
  # POST /determinations.json
  def create
    @determination = Determination.new(determination_params)

    respond_to do |format|
      if @determination.save
        format.html { redirect_to @determination, notice: 'Determination was successfully created.' }
        format.json { render :show, status: :created, location: @determination }
      else
        format.html { render :new }
        format.json { render json: @determination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /determinations/1
  # PATCH/PUT /determinations/1.json
  def update
    respond_to do |format|
      if @determination.update(determination_params)
        format.html { redirect_to @determination, notice: 'Determination was successfully updated.' }
        format.json { render :show, status: :ok, location: @determination }
      else
        format.html { render :edit }
        format.json { render json: @determination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /determinations/1
  # DELETE /determinations/1.json
  def destroy
    @determination.destroy
    respond_to do |format|
      format.html { redirect_to determinations_url, notice: 'Determination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_determination
      @determination = Determination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def determination_params
      params.fetch(:determination, {})
    end
end
