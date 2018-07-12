class ServicesController < ApplicationController
  # new, create, show, edit, update, destroy
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    service_params = params.require(:service).permit(:name, :price, :duration, :description)
    # Hash = {name: "Serviço Teste", price: 123122 }
    @service = Service.new(service_params)

    if @service.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @service = Service.find(params[:id])
  end
end
