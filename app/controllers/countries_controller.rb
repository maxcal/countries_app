class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def import
    @countries = CountryImporterJob.perform_now('africa')
    flash[:notice] = "#{@countries.length} countries imported."
    redirect_to action: :index
  end
end
