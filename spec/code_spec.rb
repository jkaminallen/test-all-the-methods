require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

RSpec.describe "perimeter" do
  it "returns 20 for a square with a width of 5" do
    expect(perimeter(5)).to eq(20)
  end

  it "returns 30 for a rectangle with a width of 5 and a length of 10" do
    expect(perimeter(5, 10)).to eq(30)
  end
end

RSpec.describe "average" do
  it "should take an array as the argument grade_list and return a float" do
    expect(average([1, 2, 3])).to eq(2.0)
  end
end

RSpec.describe "rankings" do
  it "should list the students in a numerical ranking" do
    expect(rankings(['Jonah', 'Jon', 'John'])).to eq("1. Jonah\n2. Jon\n3. John\n")
  end
end

RSpec.describe "greet" do
  it "should greet the user in spanish" do
    expect{greet("Jon", "spanish")}.to output(/Hola Jon!/).to_stdout
  end

  it "should greet the user in italian" do
    expect{ greet("Jon", "italian")}.to output(/Ciao Jon!/).to_stdout
  end

  it "should greet the user in french" do
    expect{ greet("Jon", "french")}.to output(/Bonjour Jon!/).to_stdout
  end

  it "should greet the user in english" do
    expect{ greet("Jon")}.to output(/Hi Jon!/).to_stdout
  end
end

RSpec.describe "print_puzzle" do
  it "should take in guesses and print out the letter if correct" do
    expect{ print_puzzle("cheese", "[c, h, s]")}.to output(/c h _ _ s _ /).to_stdout
  end
end

RSpec.describe "divisible_by_three" do
  it "should divide the number by three" do
    expect(divisible_by_three(3)).to eq(true)
  end
end

RSpec.describe "perfect_square?" do
  it "if the number is less than one" do
    expect{ perfect_square? (0)}.to raise_error(ArgumentError, "number must be greater than or equal to one")
  end

  it "should return true for a perfect square" do
    result = perfect_square?(16)
    expect(result).to eq(true)
  end

  it "should return false if not perfect" do
    result = perfect_square?(15)
    expect(result).to eq(false)
  end
end
