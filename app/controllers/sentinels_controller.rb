class SentinelsController < ApplicationController
  before_action :set_sentinel, only: [:show, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  # GET /sentinels
  def index
    @sentinels = Sentinel.all

    render json: @sentinels
  end

  # GET /sentinels/1
  def show
    render json: @sentinel
  end

  # POST /sentinels
  def create
    @sentinel = Sentinel.new(sentinel_params)

    if @sentinel.save
      render json: @sentinel, status: :created, location: @sentinel
    else
      render json: @sentinel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sentinels/1
  def update
    if @sentinel.update(sentinel_params)
      render json: @sentinel
    else
      render json: @sentinel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sentinels/1
  def destroy
    @sentinel.destroy
    render json: { message: 'Sentinel destroyed' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentinel
      @sentinel = Sentinel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    # "skills": ["Fighting", "Running", "Algorithm Cracking"]
    def sentinel_params
      params.require(:sentinel).permit(:name, :code, :group, :skills => [])
    end
end
