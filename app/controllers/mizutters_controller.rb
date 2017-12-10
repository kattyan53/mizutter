class MizuttersController < ApplicationController
  before_action :set_mizutter, only: [:edit, :update, :destroy]
  
  def index
    @mizutters = Mizutter.all
  end
  
  def new
    if params[:back]
     @mizutter = Mizutter.new(mizutter_params)
    else
     @mizutter = Mizutter.new
    end
  end
  
  def create
    @mizutter = Mizutter.new(mizutter_params)
    if @mizutter.save
      redirect_to mizutters_path, notice: "つぶやきました！"
    else
      render 'new'
    end
  end
  
  def edit
    @mizutter = Mizutter.find(params[:id])
  end
  
  def update
    @mizutter = Mizutter.find(params[:id])
    if @mizutter.update(mizutter_params)
      redirect_to mizutters_path, notice: "つぶやきなおしました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @mizutter.destroy
    redirect_to mizutters_path, notice:"削除しました！"
  end
  
  def confirm
    @mizutter = Mizutter.new(mizutter_params)
    render :new if @mizutter.invalid?
  end

  private
  def mizutter_params
    params.require(:mizutter).permit(:content)
  end
  
  def set_mizutter
    @mizutter = Mizutter.find(params[:id])
  end
end
