class MessagesController < ApplicationController
  def index
  end

  def create
    @messages = Message.all
    redirect_to root_path
  end

end
