class ArtistsController < ApplicationController
  before_action :set_chart
  before_action :set_artist, only: [:create, :edit, :update, :destroy]
  
  
  def index
    @artists = @chart.artist
  end

  def new
    @artist = @chart.artist.new
  end

  def show
  end

  def edit
    render :form
  end

  def create
    @artist = @chart.artist(artist_params)
    if @artist.save
      redirect_to [@chart, @artist]
    else
      render :form

  end

  def update
    if @artist.update(artist_params)
      redirect_to [@chart, @artist]
    else
      render :form
  end

  def destroy
    @artist.find(params[:id]).destroy
    redirect_to chart_artist_path
  end


  private

    def set_artist
      @artist = Artist.find(params[:id])
    end

    def set_chart
      @chart = Chart.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:name)
    end

end
