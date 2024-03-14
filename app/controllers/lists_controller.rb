class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    @list = List.new(list_params)
    if @list.save
      flash[:notice]="Book was successfully created."
      redirect_to list_path(@list.id)
    else
      render:new
    end
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  def list_params
    params.require(:list).permit(:title,:body,:image)
  end
end
