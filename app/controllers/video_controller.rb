class VideoController < ApplicationController
  def show
  	@code =  Clip.first.description
  end
end
