class LinesController < ApplicationController
  
  def destroy
    TrainLine.find_by_id(params[:id]).destroy
    
    redirect_to train_lines_url
  end
  
  def update
    TrainLine.find_by_id(params[:id]).update_attributes(params[:train_line])
    
    redirect_to train_line_url(@line.id)
  end
  
  def edit
    @line = TrainLine.find_by_id(params[:id])
  end
  
  def show
    @line = TrainLine.find_by_id(params[:id])
  end
  
  def index
    @lines = TrainLine.all
  end
  
  def new
    @line = TrainLine.new
  end
  
  def create
    TrainLine.create(params[:train_line])
  
    redirect_to train_lines_url
  end
  
end