class LinksController < ApplicationController


  def new
  	@link = Link.new
  end

  def create
  	@link = Link.new(link_params)
  	@link.hashcode = Link.ritlyhash
  	if @link.save
  		redirect_to @link
  	else 
  		render 'new'
  	end
  end

  def show
  	@link = Link.find(params[:id])
  end

  def redirect
  	redirect_to Link.find_by(hashcode: params[:code]).link
  end

  def preview
  	@link = Link.find_by(hashcode: params[:code])
  end

private
	def link_params
		params.require(:link).permit(:link)
	end

end
