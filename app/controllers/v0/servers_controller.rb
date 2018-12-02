class V0::ServersController < ApplicationController
  def index
    @servers = Server.all

    render json: @servers, status: :ok
  end

  def create
    @server = Server.new(server_params)

    @server.save
    render json: @server, status: :created
  end

  def destroy
    @server = Server.where(id: params[:id]).first
    if @server.destroy
      head(:no_content)
    else
      head(:unprocessable_entity)
    end
  rescue NoMethodError
      head(:not_found)
  end

  private

  def server_params
    params.require(:server).permit(:friendly_name, :ip, :username, :keyfile)
  end
end
