class TicketsController < ApplicationController
  before_action :find_ticket, only: %i[edit update]
  before_action :build_ticket, only: %i[new create]

  def index
    @tickets = Ticket.all
  end

  def new; end

  def edit; end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to tickets_path
      flash[:success] = 'Ticket Create Successfully'
    else
      render :new
      flash[:notice] = 'Ticket Not Create'
    end
  end

  def update
    if @ticket.update_attributes(ticket_params)
      redirect_to tickets_path
      flash[:success] = 'Ticket Update Successfully'
    else
      render :edit
      flash[:notice] = 'Ticket Not Update'
    end
  end

  private

  def find_ticket
  @ticket = Ticket.find(params[:id])
  end

  def build_ticket
    @ticket = Ticket.new
  end

  def ticket_params
    params.require(:ticket).permit(:name, :description, :project_name, :location, :status)
  end
end

