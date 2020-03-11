class MannersController < ApplicationController
  before_action :set_manner, only: [:edit, :update]
  before_action :require_user_logged_in
  

  def new
    @manner = Manner.new
  end

  def create
    @manner = Manner.new(manner_params)

    if @manner.save
      flash[:success] = '正常に登録されました'
      redirect_to root_url
    else
      flash.now[:danger] = '登録されませんでした'
      render :new
    end
  end
  

  def edit
  end

  def update
    if @manner.update(manner_params)
      flash[:success] = '正常に更新されました'
      redirect_to user_path
    else
      flash.now[:danger] = '更新されませんでした'
      render :edit
    end
  end


  
  private
  def manner_params
    params.require(:manner).permit(:method,:like)
  end
  

  def set_manner
    @manner = Manner.find(params[:id])
  end
end
