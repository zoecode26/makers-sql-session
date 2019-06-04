require 'sinatra/base'
require './lib/country_data'
require './database_connection_setup'

class CountryDataApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/all_data' do
    @data = CountryData.all
    erb :display
  end

  get '/european_countries' do
    @data = CountryData.european_countries
    erb :display
  end

  get '/all_data_sorted_by_population_increasing_order' do
    @data = CountryData.all_data_sorted_by_population_increasing_order
    erb :display
  end

  get '/all_data_sorted_by_population_decreasing_order' do
    @data = CountryData.all_data_sorted_by_population_decreasing_order
    erb :display
  end

  get '/population_greater_than_100_million' do
    @data = CountryData.population_greater_than_100_million
    erb :display
  end

  get '/population_less_than_20_million' do
    @data = CountryData.population_less_than_20_million
    erb :display
  end

  get '/population_density_between_50_and_150' do
    @data = CountryData.population_density_between_50_and_150
    erb :display
  end

  get '/highest_gni_per_capita_in_asia' do
    @data = CountryData.highest_gni_per_capita_in_asia
    erb :display
  end

  get '/third_lowest_gni_per_capita_in_south_america' do
    @data = CountryData.third_lowest_gni_per_capita_in_south_america
    erb :display
  end

  get '/all_countries_not_in_europe' do
    @data = CountryData.all_countries_not_in_europe
    erb :display
  end

  get '/all_data_country_name_and_population_only' do
    @data = CountryData.all_data_country_name_and_population_only
    erb :display
  end

  get '/south_american_countries_hide_population' do
    @data = CountryData.south_american_countries_hide_population
    erb :display
  end

  get '/countries_not_in_asia_hide_gni_per_capita_and_population_density' do
    @data = CountryData.countries_not_in_asia_hide_gni_per_capita_and_population_density
    erb :display
  end

  run! if app_file == $0
end
