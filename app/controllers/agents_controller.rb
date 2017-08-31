class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  # GET /agents
  def index
    @agents = Agent.all

    render json: @agents
  end

  # GET /agents/1
  def show
    render json: @agent
  end

  # POST /agents
  def create
    @agent = Agent.new(agent_params)

    if @agent.save
      render json: @agent, status: :created, location: @agent
    else
      render json: @agent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /agents/1
  def update
    if @agent.update(agent_params)
      render json: @agent
    else
      render json: @agent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /agents/1
  def destroy
    @agent.destroy
    render json: { message: 'Agent down' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent
      @agent = Agent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agent_params
      params.require(:agent).permit(:name, :code, :skills => [])
    end
end
