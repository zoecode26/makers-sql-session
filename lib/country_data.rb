require 'pg'

class CountryData
  attr_reader :name, :continent, :population, :density, :gni

  def initialize(name = '', continent = '', population = '', density = '', gni = '')
    @name = name
    @continent = continent
    @population = population
    @density = density
    @gni = gni
  end

  def self.all
    result = DatabaseConnection.query('SELECT * FROM countries;')
    result.map{ |country| CountryData.new(country['name'], country['continent'], country['population'], country['density'], country['gni']) }
  end

  def self.european_countries
    result = DatabaseConnection.query("SELECT * FROM countries WHERE continent = 'Europe';")
    result.map{ |country| CountryData.new(country['name'], country['continent'], country['population'], country['density'], country['gni']) }
  end

  def self.all_data_sorted_by_population_increasing_order
    result = DatabaseConnection.query("SELECT * FROM countries ORDER BY population;")
    result.map{ |country| CountryData.new(country['name'], country['continent'], country['population'], country['density'], country['gni']) }
  end

  def self.all_data_sorted_by_population_decreasing_order
  end

  def self.population_greater_than_100_million
  end

  def self.population_less_than_20_million
  end

  def self.population_density_between_50_and_150
  end

  def self.highest_gni_per_capita_in_asia
  end

  def self.third_lowest_gni_per_capita_in_south_america
  end

  def self.all_countries_not_in_europe
  end

  def self.all_data_country_name_and_population_only
  end

  def self.south_american_countries_hide_population
  end

  def self.countries_not_in_asia_hide_gni_per_capita_and_population_density
  end
end
