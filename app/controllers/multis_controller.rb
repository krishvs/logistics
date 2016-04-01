class MultisController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_multi, only: [:show, :edit, :update, :destroy]

  # GET /multis
  # GET /multis.json
  def index
    @multis = Multi.all
  end

  # GET /multis/1
  # GET /multis/1.json
  def show
  end

  # GET /multis/new
  def new
    @multi = Multi.new
  end

  # GET /multis/1/edit
  def edit
  end

  # POST /multis
  # POST /multis.json
  def create
    @multi = Multi.new(multi_params)
    @multi.user = current_user

    respond_to do |format|
      if @multi.save
        format.html { redirect_to @multi, notice: 'Multi was successfully created.' }
        format.json { render :show, status: :created, location: @multi }
      else
        format.html { render :new }
        format.json { render json: @multi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multis/1
  # PATCH/PUT /multis/1.json
  def update
    respond_to do |format|
      if @multi.update(multi_params)
        format.html { redirect_to @multi, notice: 'Multi was successfully updated.' }
        format.json { render :show, status: :ok, location: @multi }
      else
        format.html { render :edit }
        format.json { render json: @multi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multis/1
  # DELETE /multis/1.json
  def destroy
    @multi.destroy
    respond_to do |format|
      format.html { redirect_to multis_url, notice: 'Multi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multi
      @multi = Multi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multi_params
      params.require(:multi).permit(:user_id)
    end
end
