class SentinelsController < ApplicationController
  before_action :set_sentinel, only: [:show, :update, :destroy]

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
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentinel
      @sentinel = Sentinel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sentinel_params
      params.require(:sentinel).permit(:name, :code, :skills, :group)
    end
end
