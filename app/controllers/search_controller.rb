class SearchController < ApplicationController

  def search
    #store all the parameters that match the search
    @colors = Measurement.where("color LIKE ? ", "%#{params[:color]}%")
    @genders = Measurement.where("gender LIKE ? ", "%#{params[:gender]}%")
    @inseams = Measurement.where("inseam LIKE ? ", "%#{params[:inseam]}%")
    @waists = Measurement.where("waist LIKE ? ", "%#{params[:waist]}%")
    @hips = Measurement.where("hip LIKE ? ", "%#{params[:hip]}%")
    @heights = Measurement.where("height LIKE ? ", "%#{params[:height]}%")
    @weights = Measurement.where("weight LIKE ? ", "%#{params[:weight]}%")
  end

end
