class ChartsController < ApplicationController
  def index
    @charts = Chart.all
  end

  def show
    @chart = Chart.find(params[:id])
  end

  def new
    @chart = Chart.new
    render :form
  end

  def create
  @chart = Chart.new(chart_params)
    if @chart.save
      redirect_to charts_path
    else 
      render :new
    end
  end

  def edit
    @chart = Chart.find(params[:id])
    render :form
  end

  def update
    @chart = Chart.find(params[:id])
    if @chart.update(chart_params)
      redirect_to charts_path
    else
      render :edit
    end
  end

  def destroy
    Chart.find(params[:id])
    redirect_to charts_path
  end

  private
  def chart_params
    params.require(:chart).permit(:name)
  end
end
