class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    self.new
    @genre.name = params[:genre][:name]
    @genre.save
    redirect_to genre_path(@genre.id)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre.id)
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end
end
