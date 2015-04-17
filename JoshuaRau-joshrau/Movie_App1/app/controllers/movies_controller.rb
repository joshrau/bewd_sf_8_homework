class MoviesController < ApplicationController

  def index
  	@movies = Movie.search(params[:q])
  end 

  # 	if params[:q]
  # 		@movies = Movie.where('title LIKE :search', search: "%#{params[:q]}%")
  # 		if @movies.count == 0 
  # 			@movies = Movie.all
  # 		end
  # 	else
  # 	@movies = Movie.all
  # 	end
  # end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @Movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # # Use callbacks to share common setup or constraints between actions.
    # def set_movie
    #   @movie = Movie.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :description, :year_released)
    end


end
