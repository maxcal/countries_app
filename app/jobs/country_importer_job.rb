# app/jobs/country_importer_job.rb
# Persists countries from the restcountries.eu API
class CountryImporterJob < ApplicationJob
  def perform(region = 'africa')
    response = RestCountriesClient.region(region)
    return unless response.success?
    response.map do |line|
      Country.create(name: line["name"])
    end.select(&:persisted?)
  end
end
