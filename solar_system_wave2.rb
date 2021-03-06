# Create a SolarSystem class with an @planets instance variable.
# Create an initialize method which should take a collection of planet names and store them in an @planets instance variable.
# Create a method that adds a planet to the list (not using user input).
# Create a method which will return, not print, a list of the planets as a String.
# Write code to test your SolarSystem
# Modify SolarSystem's initialize method to take a list of hashes where each planet is sent as a hash with at least 5 attributes.

# Define the class
class SolarSystem

  def initialize(planets)
    @planets = planets
  end

  attr_reader :planets

  def puts_self
    puts self
  end

  def self.planets
    return @planets
  end

  def planet
    puts
  end
  arr_planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

  @planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

end

class Planet

  attr_accessor :name
  attr_accessor :order
  attr_accessor :radius
  attr_accessor :moons

  def initialize(name, order, radius, moons)
    @name = name
    @order = order
    @radius = radius
    @moons = moons
  end

  def puts_self
    puts self
  end

  def self.name
    return @name
  end

  # instance method
  def summary
    return "  #{order}. #{name} - Radius: #{radius}km. Number of Moons: #{moons}."
  end

  def self.summary
    return @summary
  end

end

  planet_arr = [
    Planet.new("Mercury", 1, 2440  , 0),
    Planet.new("Venus", 2, 6052 , 0),
    Planet.new("Earth", 3, 6371 ,1)
  ]

puts
planet_arr.each do |i|
  puts i.summary
end
