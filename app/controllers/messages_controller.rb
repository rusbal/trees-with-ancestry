class MessagesController < ApplicationController

  def index
    @messages = Message.all
    @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new(:parent_id => params[:parent_id])
  end

  def create
    Message.create(message_params)
    redirect_to root_path
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to :back
  end

  private

  def message_params
    params.require(:message).permit(:message, :parent_id)
  end

end
