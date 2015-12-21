#!/usr/bin/ruby
class Inverse
  attr_reader :name, :gender, :age

  def initialize(name, gender, age)
    @name = name
    @gender = gender
    @age = age
  end

  def to_s
    puts "You are #{@name}, a #{@gender} and #{@age} years old."
  end
end