class ConsolesController < ApplicationController
  def index
    if params[:manufacturer].present?
      consoles = Console.where( manufacturer: params[:manufacturer] )
    else
      consoles = Console.all
    end
    render json: { consoles: consoles.map(&:fortmatted_name) }
  end
end
