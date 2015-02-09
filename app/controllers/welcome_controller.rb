class WelcomeController < ApplicationController
  before_action :set_color

  def index
    @homeland = "Scotland"
    @countries = ['Deutschland', 'Espana', 'Italia']
    @family_tree = {'Steve'=>'Dad','Pamela'=>'Mom','Amy'=>'Older Sister', 'Misty'=>'Middle Sister'}
    @sharons_tree = {'Thomas'=>'Husband', 'Daniel'=>'Son','Mary Beth'=>'Daughter-in-law'}
    @my_images = ['great_wall.jpg','paradise_beach.jpg','retina_burn.jpg','twin_lakes.jpg','image1.jpg','image2.jpg','image3.jpg','image4.jpg']
    @welcome_message = params[:welcome_message]
    @set_margin = params[:set_margin]
    @color = session[:color]
  end

  def about
    @color = session[:color]
    @shoe_size = params[:shoe_size]

  end

  def contact

  end
end

private
def set_color
  @color = params[:color]
  if @color
    session[:color] = @color
  end

  if @color
  else
    @color=session[:color]
  end
end