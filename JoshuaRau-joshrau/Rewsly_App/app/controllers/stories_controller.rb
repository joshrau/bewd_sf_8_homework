class StoriesController < ApplicationController


def index
	@stories = Story.search(params[:q])
	# @stories = Story.all
end


def new
	@story = Story.new
end


def show
	@story = Story.find params[:id]
end


def create
	@story = Story.new 

    if @story.save
      redirect_to @story
    else
      render :new
    end
end

end