class EventosController < ApplicationController
	
  before_action :authenticate_user!
  
  def index
    @eventos = Evento.all
  end

  def new
    @evento = Evento.new
  end

  def edit
    @evento = Evento.find(params[:id])
  end

  def create
    @evento = Evento.new(evento_params)

    if @evento.save
      redirect_to @evento
    else
      render 'new'
    end
  end

  def update
  @evento = Evento.find(params[:id])

    if @evento.update(evento_params)
      redirect_to @evento
    else
      render 'edit'
    end
  end

  def show
    @evento = Evento.find(params[:id])
  end

  private
    def evento_params
      params.require(:evento).permit(:title, :text)
    end
end
